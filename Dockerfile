# This is a comment
FROM ubuntu:18.04
MAINTAINER me <little.mole@oha7.org>

# std debian dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  git sudo joe wget netcat psmisc net-tools \
  build-essential g++ cmake pkg-config valgrind \
  libgtest-dev  openssl libssl-dev libevent-dev uuid-dev \
  nghttp2 libnghttp2-dev libcurl4-openssl-dev \
  clang libc++-dev libc++abi-dev \
  libboost-dev libboost-system-dev zlib1g-dev \
  libmysqlclient-dev sqlite3 libsqlite3-dev

ARG CXX=g++
ENV CXX=${CXX}

# compile gtest with given compiler
ADD ./docker/gtest.sh /usr/local/bin/gtest.sh
RUN /usr/local/bin/gtest.sh

# compile jsoncpp with given compiler
ADD ./docker/jsoncpp.sh /usr/local/bin/jsoncpp.sh
RUN /usr/local/bin/jsoncpp.sh

ARG BUILDCHAIN=make
ENV BUILDCHAIN=${BUILDCHAIN}

# build dependencies
ADD ./docker/build.sh /usr/local/bin/build.sh
ADD ./docker/install.sh /usr/local/bin/install.sh

RUN /usr/local/bin/install.sh cryptoneat 
RUN /usr/local/bin/install.sh diy 

