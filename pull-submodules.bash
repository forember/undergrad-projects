#!/bin/bash
set -e
set -x
checkout="$(readlink -ev "$(dirname "$0")/master-branch.bash")"
cd "$(dirname "$0")"
git pull
git submodule sync --recursive
git submodule update --recursive --init
git submodule foreach --recursive "$checkout"
git submodule foreach --recursive git pull
cd ros-vagrant-xfce4
git submodule update --recursive --init
