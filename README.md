# startup-script
Simple startup script and update script that I wanted to push to Github. I use this in my everyday workflow when I power on my computer.

## Workflow and setup

To setup these scripts, do the following:

### Make the file executable
run: 
chmod +x ./startup.sh
chmod +x ./update.sh
make sure you have bash installed, otherwise be ready to configure the shebang at the beginning.


### Put the files into a folder that can be executed from your PATH
Make sure to move these scripts into usr/local/bin or another directory that is executable. for example:

mv ./update.sh usr/local/bin/update
mv ./startup.sh usr/local/bin/startup

alternatively, you can also put the directory into your path, but I would not recommend this.

### Make sure the file can be run
you should be okay to run 'update' or 'startup' from the command line now. If there are any issues please let me know.
The update script and startup script may require a logfiles directory. You can edit that in the script if that is not to your liking.

assuming it was run and everything was correct, you can continue to the next step.

### Add the startup script to your startx or xsessions
Since I use startx, I do not know entirely how to implement the script in xsessions. I may add that at a later time.

Depending on your DE/WM, you may need to be careful about how you implement the script. I run DWM and it took me a bit to configure it correctly due to the nature of how dwm starts up. This is the content of my .xinitrc file currently:

picom -b
~/.fehbg
dwmblocks &
/usr/local/bin/startup &
exec dwm

There are some other files in there that you may not need or want, but this is just an example. For other wms, like i3, I believe you should put it before everything else to work, like this:

#For i3
exec i3
picom -b
~/.fehbg
/usr/bin/emacs --daemon
dwmblocks &
/usr/local/bin/startup &

If there are issues don't be afraid to reach out. This is one of my first experiences with bash scripting but I am certain I can work out any issues there might be. I am just a little unexperienced with other DEs/WMs

### Thank you for using my script!
Everything should be setup now. Enjoy!

