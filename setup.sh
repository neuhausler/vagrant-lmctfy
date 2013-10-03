#!/usr/bin/env bash

if [[ -e /usr/local/bin/lmctfy ]]; then
  exit
fi

set -o errexit
set -o verbose

sudo apt-get install -y \
  build-essential \
  git \
  libgflags-dev \
  libprotobuf-dev \
  pkg-config \
  protobuf-compiler \
  wget

#
# install re2
#

wget https://re2.googlecode.com/files/re2-20130802.tgz

tar -xzf re2-20130802.tgz

pushd re2
  make
  sudo make install prefix=/usr
popd

rm -fr re2*

#
# install lmctfy
#

git clone https://github.com/google/lmctfy.git

pushd lmctfy
  make
  sudo cp ./bin/lmctfy/cli/lmctfy /usr/local/bin/
popd

rm -fr lmctfy
