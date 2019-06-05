#!/usr/bin/env bash

export HOME=/tmp
export UDOCKER_DIR=/tmp
export UDOCKER_BIN=/tmp
export UDOCKER_LIB=/tmp
export UDOCKER_CONTAINERS=/tmp
export PROOT_NO_SECCOMP=1

cd /tmp

# Setup
python udocker --quiet create --name=ubuntu ubuntu:latest
python udocker --quiet setup --execmode=F1 ubuntu

# Run it!
python udocker --quiet run --nosysdirs ubuntu echo 'Hello from ubuntu in docker in lambda :)'
