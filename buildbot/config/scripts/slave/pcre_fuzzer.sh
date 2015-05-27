#!/bin/bash

set -eux

. "$(cd $(dirname $0) && pwd)/buildbot_common.sh"

root_dir=$(pwd)

# TODO: your project here
repo_url="svn://vcs.exim.org/pcre2/code/trunk"
src_dir="${root_dir}/pcre"

corpus_repo_url="git@github.com:kcc/fuzzing-with-sanitizers.git"
corpus_checkout_dir="${root_dir}/corpus"
corpus_dir="${corpus_checkout_dir}/pcre2/C1"

build_dir="${root_dir}/build"
toolchain_dir=$HOME/toolchains/bin
coverage_flags=" -fsanitize-coverage=4 -mllvm -sanitizer-coverage-8bit-counters=1"
fuzzer_runs=1000

fuzzer_repo_url="http://llvm.org/svn/llvm-project/llvm/trunk/lib/Fuzzer"
fuzzer_src_dir="${root_dir}/Fuzzer"
fuzzer_build_dir="${root_dir}/Fuzzer"

# TODO: commands to build your project here.
function build_pcre() {
  echo "@@@BUILD_STEP build pcre@@@"
  cd "$src_dir"
  ./autogen.sh
  CC="clang -fsanitize=address $coverage_flags" ./configure --prefix="$build_dir/pcre"
  make -j $nproc
  make install
  cd "$root_dir"
}

function build_pcre_fuzzer() {
  echo "@@@BUILD_STEP build pcre_fuzzer@@@"
  cd "$build_dir"
  cat << EOF > pcre_fuzzer.cc
#include <string.h>
#include "pcre2posix.h"
extern "C" void LLVMFuzzerTestOneInput(const unsigned char *data, size_t size) {
  if (size < 1) return;
  char *str = new char[size+1];
  memcpy(str, data, size);
  str[size] = 0;
  regex_t preg;
  if (0 == regcomp(&preg, str, 0)) {
    regexec(&preg, str, 0, 0, 0);
    regfree(&preg);
  }
  delete [] str;
}
EOF
  clang++ -g -fsanitize=address $coverage_flags -c -std=c++11  -I pcre/include/ pcre_fuzzer.cc
  clang++ -g -fsanitize=address -Wl,--whole-archive pcre/lib/*.a -Wl,-no-whole-archive \
    "$fuzzer_build_dir"/Fuzzer*.o pcre_fuzzer.o -o pcre_fuzzer
  cd "$root_dir"
}

function fuzz() {
  echo "@@@BUILD_STEP run pcre_fuzzer@@@"
  cd "$build_dir"
  ./pcre_fuzzer "$corpus_dir" -jobs=1 -runs=1000 -use_counters=1
  cd "$root_dir"
}

function push_corpus() {
  echo "@@@BUILD_STEP push corpus@@@"
  "$fuzzer_src_dir/pull_and_push_fuzz_corpus.sh" "$corpus_dir"
}

###

PATH="$toolchain_dir":$PATH

svn_sync ${repo_url} ${src_dir}
svn_sync ${fuzzer_repo_url} ${fuzzer_src_dir}
git_sync ${corpus_repo_url} ${corpus_checkout_dir}
build_pcre
compile_fuzzer ${fuzzer_src_dir} ${fuzzer_build_dir}
build_pcre_fuzzer
fuzz
push_corpus
