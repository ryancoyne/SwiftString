#!/bin/bash

TOOLCHAIN_VERSION=swift-3.0.2-RELEASE

if [ $TRAVIS_OS_NAME == "osx" ]; then
  curl -O https://swift.org/builds/development/xcode/${TOOLCHAIN_VERSION}/${TOOLCHAIN_VERSION}-osx.pkg
  sudo installer -pkg ${TOOLCHAIN_VERSION}-osx.pkg -target /
elif [ $TRAVIS_OS_NAME == "linux" ]; then
  sudo apt-get install clang
  wget https://swift.org/builds/development/xcode/${TOOLCHAIN_VERSION}/${TOOLCHAIN_VERSION}-ubuntu14.04.tar.gz
  tar -xzv ${TOOLCHAIN_VERSION}-ubuntu14.04.tar.gz /swift
  # export PATH=/swift/usr/bin:"$PATH"
fi

swift --version