#!/usr/bin/env bash

nproc=$(getconf _NPROCESSORS_ONLN)

# svn_sync <repo url> <dir> [<revision number>]
function svn_sync {
  local repo=$1
  local dir=$2
  if [ -z "${3-}" ]; then
    rev_arg=""
    echo "@@@BUILD_STEP sync ${dir}@@@"
  else
    rev_arg="--revision $3"
    echo "@@@BUILD_STEP sync ${dir} to r$3@@@"
  fi
  if [ -d ${dir} ]; then
    svn up "${dir}" ${rev_arg}
  else
    svn co "${repo}" "${dir}" ${rev_arg}
  fi
}

# git_sync <repo url> <dir>
function git_sync {
  local repo=$1
  local dir=$2
  echo "@@@BUILD_STEP sync ${dir}@@@"
  if [ -d ${dir} ]; then
    (cd "${dir}" && git remote prune origin && git pull)
  else
    git clone "${repo}" "${dir}" 
  fi
}

# compile_fuzzer <fuzzer dir>
function compile_fuzzer {
  echo "@@@BUILD_STEP compile Fuzzer@@@"
  mkdir -p $2
  (cd $2 && clang -c -g -O2 -std=c++11 "$1"/*.cpp -I"$1")
}
