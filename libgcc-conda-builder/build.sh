#!/bin/bash

# GCC is compiled with multilib for x86_64 (default) and i386 (use -m32 in CFLAGS)
if [ "$(ARCH)" == "64" ]; then
    SRC=/usr/lib64
else
    SRC=/usr/lib
fi
DST=$PREFIX/lib

mkdir $DST
cd $DST

cp $SRC/libgcc_s.so.1 .
ln -s   libgcc_s.so.1 libgcc_s.so

cp $SRC/libstdc++.so.6.0.21 .
ln -s   libstdc++.so.6.0.21 libstdc++.so
ln -s   libstdc++.so.6.0.21 libstdc++.so.6

cp $SRC/libgfortran.so.3.0.0 .
ln -s   libgfortran.so.3.0.0 libgfortran.so.3
ln -s   libgfortran.so.3.0.0 libgfortran.so
