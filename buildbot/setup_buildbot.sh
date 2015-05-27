#!/bin/bash

set -eu

function yes_no() {
  while true
  do
    read -p "$1" choice
    case $choice in
      Y|y)
        return 0
        ;;
      N|n)
        return 1
        ;;
      "")
        if [ -n "$2" ]
        then
          return $2
        fi
        ;;
    esac
  done
}

function install_common_deps() {
  echo "Installing dependencies..."
  sudo dpkg --add-architecture i386
  sudo apt-get update
}

function install_slave_deps() {
  echo "Installing slave dependencies..."
  sudo apt-get install -y g++ clang make subversion git vim zip \
       libstdc++6:i386 binutils-dev binutils-gold buildbot-slave \
       cmake re2c

  echo "Installing tmpreaper..."
  sudo apt-get install tmpreaper -y
  sudo sed -i "s/SHOWWARNING=true/SWOWWARNING=false/" /etc/tmpreaper.conf
}

function install_master_deps() {
  echo "Installing master dependencies..."
  sudo apt-get install buildbot
}

function move_homedir() {
  homedir=$(readlink -m "$1")
  sudo usermod -m -d "$homedir" buildbot
  sudo chown buildbot:buildbot "$homedir"
}

function setup_gce_disk() {
  echo "Setting up a GCE external disk..."
  read -p "Device [/dev/sdb]: " -e dev_name
  dev_name=${dev_name:-/dev/sdb}
  read -p "Mount point [/mnt/b/]: " -e mount_point
  mount_point=${mount_point:-/mnt/b/}
  sudo mkdir -p ${mount_point}
  sudo /usr/share/google/safe_format_and_mount -m "mkfs.ext4 -F" ${dev_name} ${mount_point}
  uuid=$(sudo blkid -o value -s UUID ${dev_name})
  if ! grep ${uuid} /etc/fstab
  then
    sudo sh -c "echo UUID=${uuid} ${dev_name} ext4 defaults 1 1 >> /etc/fstab"
  fi
  move_homedir "${mount_point}/buildbot"
}

function setup_homedir() {
  echo "Buildbot's home dir will hold all build configuration, including source and build trees."
  echo "Please ensure it has enough free space."
  if [[ -x "/usr/share/google/safe_format_and_mount" ]]
  then
    if yes_no "Would you like to set up a GCE external disk as buildbot home dir [Y/n]?" 0
    then
      setup_gce_disk
      homedir=~buildbot
      return
    fi
  else
    echo "Not running on GCE."
  fi
  local old_homedir="$(readlink -f ~buildbot)"
  read -p "Home dir location [${old_homedir}]: " new_homedir
  new_homedir=${new_homedir:-"$old_homedir"}
  if [ "$old_homedir" != "$new_homedir" ]
  then
    sudo mkdir -p "$new_homedir"
    move_homedir "$new_homedir"
  fi
  homedir=~buildbot
}

function setup_slave() {
  echo "Setting up a buildbot slave..."
  read -p "Slave name: " -e slave_name
  read -p "Slave password: " -e slave_password
  read -p "Master address:" -e master_address
  read -p "Master port [9991]:" -e master_port
  master_port=${master_port:-9991}
  cd $homedir/slaves/
  sudo sudo -u buildbot buildslave create-slave ${slave_name} ${master_address}:${master_port} ${slave_name} "${slave_password}"
  sudo sudo -u buildbot sed -i "s/keepalive = [0-9]\+/keepalive = 200/" ${slave_name}/buildbot.tac
  sudo sudo -u buildbot vim ${slave_name}/info/admin
  echo "Configuration written to $(readlink -f $slave_name)/buildbot.tac"

  sudo sh -c "cat > /etc/default/buildslave << EOF
SLAVE_ENABLED[1]=1                    # 1-enabled, 0-disabled
SLAVE_NAME[1]=\"${slave_name}\"   # short name printed on start/stop
SLAVE_USER[1]=\"buildbot\"              # user to run slave as
SLAVE_BASEDIR[1]=\"${homedir}/slaves/${slave_name}\"                   # basedir to slave (absolute path)
SLAVE_OPTIONS[1]=\"\"                   # buildbot options
SLAVE_PREFIXCMD[1]=\"\"                 # prefix command, i.e. nice, linux32, dchroot
"
  echo "DONE!"
  echo
  echo "To start the slave, run:"
  echo "$ sudo sudo -u buildbot buildslave start ${homedir}/slaves/${slave_name}/"
  echo "Slave will auto-start on reboot."
}

function setup_master() {
  echo "Setting up a buildbot master..."
  read -p "Master name: " -e master_name
  read -p "Slave password: " -e slave_password
  cd $homedir/masters/
  sudo sudo -u buildbot buildbot create-master ${master_name}
  sudo sudo -u buildbot echo "$slave_password" > "$master_name/slavepasswd"

  sudo sh -c "cat > /etc/default/buildmaster << EOF
MASTER_ENABLED[1]=1                    # 1-enabled, 0-disabled
MASTER_NAME[1]=\"${master_name}\"        # short name printed on start/stop
MASTER_USER[1]=\"buildbot\"              # user to run master as
MASTER_BASEDIR[1]=\"${homedir}/masters/${master_name}\"                   # basedir to master (absolute path)
MASTER_OPTIONS[1]=\"\"                   # buildbot options
MASTER_PREFIXCMD[1]=\"\"                 # prefix command, i.e. nice, linux32, dchroot
"
  echo "DONE! But you still need to check out a master.cfg file to ${homedir}/master/${master_name}/"
  echo
  echo "To start the master, run:"
  echo "$ sudo sudo -u buildbot buildbot start ${homedir}/master/${master_name}/"
  echo "Master will auto-start on reboot."
}

function show_help() {
  echo "Usage: `basename $0` (master|slave)"
}

case "${1:-}" in
  master)
    mode=master
    ;;
  slave)
    mode=slave
    ;;
  *)
    show_help
    exit 1
esac

install_common_deps
if [ $mode == master ]
then
  install_master_deps
else
  install_slave_deps
fi
setup_homedir
if [ $mode == master ]
then
  setup_master
else
  setup_slave
fi
