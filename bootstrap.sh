#!/usr/bin/env bash

if hash apt; then
    sudo apt-get update -y
    sudo apt-get install unzip -y
else
    sudo yum install unzip -y
fi

# deb/rpm
/media/shared/install.sh

# zip
sudo -H -u vagrant bash -c "cd ~ && /media/shared/install.sh -z"
