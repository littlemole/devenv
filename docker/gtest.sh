#!/bin/bash
set -e

cd /usr/src/googletest/googletest


if [ "$CXX" == "g++" ]
then 
	FLAGS=""
else
	FLAGS="-stdlib=libc++"
fi

cmake -DCMAKE_CXX_COMPILER=$CXX -DCMAKE_CXX_FLAGS=$FLAGS . 
make
  
ln -s /usr/src/googletest/googletest/lib/libgtest.a /usr/lib/libgtest.a && 
ln -s /usr/src/googletest/googletest/lib/libgtest_main.a /usr/lib/libgtest_main.a

