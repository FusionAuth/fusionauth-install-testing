#!/bin/bash

# Assume a sibling project is checked out next to us called fusionauth-install
if [ ! -d ../fusionauth-install ]; then
  echo "It looks like you do not have fusionauth-install checked out, we'll do that for you"
  cd ../
  git clone https://github.com/FusionAuth/fusionauth-install.git
  cd ./fusionauth-install-testing
fi

echo "Copy the install.sh from the fusionauth-install project"
cp ../fusionauth-install/install.sh .
bundle exec kitchen test
