#!/bin/bash

pushd ../dependencies
wget https://googlemock.googlecode.com/files/gmock-1.7.0.zip
unzip gmock-1.7.0.zip
mkdir gmock-1.7.0/lib gmock-1.7.0/gtest/lib
pushd gmock-1.7.0/lib
cmake -DBUILD_SHARED_LIBS=ON ..
make 
cd ../gtest/lib
cmake -DBUILD_SHARED_LIBS=ON .. 
make 
popd
popd
