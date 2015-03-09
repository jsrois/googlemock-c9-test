#!/bin/bash

# these are the dependencies to be installed in a Cloud9 Ubuntu environment (march'15)
sudo apt-get update
sudo apt-get install qt5-default cmake

 
# install googlemock/googletest
. ./install_googlemock.sh

export GMOCK_PATH=$(pwd)/../dependencies/gmock-1.7.0
export GTEST_PATH=$GMOCK_PATH/gtest