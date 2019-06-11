#!/usr/bin/env bash

set -e                          # exit on error

# llvm source code
git clone https://git.llvm.org/git/llvm.git/

# clang source code
cd llvm/tools
git clone https://git.llvm.org/git/clang.git/

cd ../projects
# compiler-rt source code, needed by sanitizers
# cd llvm/projects
git clone https://git.llvm.org/git/compiler-rt.git/

# libomp source code
# cd llvm/projects
git clone https://git.llvm.org/git/openmp.git/

# libcxx and libcxxabi source code
# cd llvm/projects
git clone https://git.llvm.org/git/libcxx.git/
git clone https://git.llvm.org/git/libcxxabi.git/

# test-suite source code
# cd llvm/projects
git clone https://git.llvm.org/git/test-suite.git/
