#!/bin/bash

# A script to help setup this iOS Project for you
# Created by: Johnny Nguyen
# Last Modified: June 16, 2018

set -e # Will exit on first error which is good

if [ "$EUID" = 0 ]; then
  echo "Please do not run as root"
  exit
fi

function main() { 
  local RUBY_VERSION=$(cat .ruby-version)

  # Print out the ruby version of what we need
  echo $RUBY_VERSION

  # Load RVM into a shell session *as a function*
  if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

    # First try to load from a user install
    source "$HOME/.rvm/scripts/rvm"

  else
    # If not found, try to install
    echo "RVM not found, attempting to install"
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    \curl -sSL https://get.rvm.io | bash -s stable

  fi

  # Then we attempt to install and use rvm
  rvm install $RUBY_VERSION
  rvm use $RUBY_VERSION

  # ======== Next is Bundle
  gem install bundler
  bundle install

  # ======== Next is CocoaPods
  bundle exec pod install

  echo "Done."
}

main