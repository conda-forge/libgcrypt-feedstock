#!/usr/bin/env bash
if [[ "${target_platform}" == linux-* ]]; then
  export CFLAGS=${CFLAGS//-O2/}
  export CPPFLAGS=${CPPFLAGS//-O2/}
  export CXXFLAGS=${CXXFLAGS//-O2/}
elif [[ "${target_platform}" == osx-* ]]; then
  export ac_cv_sys_symbol_underscore=yes
fi

./configure --prefix=$PREFIX

make -j$CPU_COUNT
