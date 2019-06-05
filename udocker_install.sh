#!/usr/bin/env bash

export HOME=/tmp
export UDOCKER_DIR=/tmp
export UDOCKER_BIN=/tmp
export UDOCKER_LIB=/tmp
export UDOCKER_CONTAINERS=/tmp
export PROOT_NO_SECCOMP=1

cd /tmp

curl https://raw.githubusercontent.com/indigo-dc/udocker/master/udocker.py > udocker

# Pull the image
echo Pulling docker hub image...
python udocker pull ubuntu:latest
echo Done pulling container.
