#!/bin/bash

logs=~/updates/update.log
file_list=("kitty" "librewolf" "emacs" "spotify" "spotify-qt" "virt-manager" "brave https://www.youtube.com")

if [[ $USER == "rylee" ]]; then
    echo "Hello Mr. Jones, I will setup your system for you now."
else
    echo "Hello $USER, I will setup your system now."
fi

# Open various applications
for filename in "${file_list[@]}"; do

    if pgrep -x "$(basename "$filename")" >/dev/null; then
        echo "$filename is already running."
    else
        echo "starting $filename..."
        $filename & >> ~/logfiles/$filename.log
    fi
done

echo "You should be all setup to start working. Have an excellent day $USER!"

