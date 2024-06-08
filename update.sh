#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu -y >> ~/logfiles/updates/update.log
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu,
    # Run the apt version of the command
    sudo apt update >> update.log
    sudo apt dist-upgrade -y >> update.log
fi

if [[ $? == 0 ]]; then
    echo "Update successful!"
else
    echo "Update failed!"
fi
