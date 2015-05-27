#!/bin/bash

set -eu

clang_rev=233105
build_dir=$HOME/toolchains-build

function build_ninja() {
  echo "Building ninja..."
  cd $build_dir
  git clone git://github.com/martine/ninja.git
  cd ninja
  git checkout release
  ./configure.py --bootstrap
  install ninja "$prefix/bin/"
}

function build_cmake() {
  echo "Building cmake..."
  cd $build_dir
  wget http://www.cmake.org/files/v3.0/cmake-3.0.2.tar.gz
  tar -xzf cmake-3.0.2.tar.gz
  cd cmake-3.0.2
  cmake -GNinja -DCMAKE_INSTALL_PREFIX="$prefix" .
  ninja
  ninja install
}

function build_clang() {
  echo "Building clang at r${clang_rev}..."
  cd $build_dir
  svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm -r $clang_rev
  cd $build_dir/llvm/tools
  svn co http://llvm.org/svn/llvm-project/cfe/trunk clang -r $clang_rev
  cd $build_dir/llvm/projects
  svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt -r $clang_rev
  cd $build_dir
  mkdir -p llvm-build && cd llvm-build
  cmake ../llvm/ -G Ninja -DCMAKE_INSTALL_PREFIX=$prefix -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=True 
  ninja clang asan lsan msan tsan ubsan
  ninja install
}

function setup_toolchain() {
  read -p "Toolchain install prefix [$HOME/toolchains]: " prefix
  prefix=${prefix:-"$HOME/toolchains"}
  mkdir -p "$prefix/bin"
  mkdir -p "$build_dir"
  build_ninja
  build_cmake
  build_clang
}

setup_toolchain
