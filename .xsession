#!/bin/sh
#
# My startup-script:
#
# Lines starting with a '#' are ignored.
#
# Currently used to start up a nice and clean session in xmonad
#

# Change your keymap:
#
# Changes to have readily avaliable accents
xmodmap -e "keycode 48=dead_acute dead_diaeresis"
xmodmap -e "keycode 49=dead_grave dead_tilde"

# Set bg over 
# using fluxbox wrapper
fbsetbg -r .backgrounds/

# Own gtkrc file

export GTK2_RC_FILES=$HOME/.fluxbox/gtkrc

# Nice ooffice

export OOO_FORCE_DESKTOP=gnome

# Maple fix
export AWT_TOOLKIT=MToolkit
export PATH=$PATH:/home/manelik/maple11/bin/
# Applications you want to run with 
# MAKE SURE THAT APPS THAT KEEP RUNNING HAVE AN ''&'' AT THE END.


trayer --edge top --align right --SetDockType true --SetPartialStrut true \
 --expand true --width 12 --transparent true --tint 0x191970 --height 10 &


eval `gnome-keyring-daemon -s`
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi
 

xcompmgr -f -C -n -D 1 &
#gnome-terminal --geometry=80x20 &

#tilda stuff
# remove  .tilda/config_0
cp .tilda/back  .tilda/config_0 
tilda &
thunar &


#turnaround to pulseaudio bug
#pulseaudio -k
#conky &

# xrandr --output LVDS --mode 720x400
# xrandr --output LVDS --mode 1024x600

# And last but not least we start xmonad.
# Because it is the last app you have to run it with ''exec'' before it.

exec xmonad
# or if you want to keep a log:
#exec xmonad -log "/home/manelik/.xmonad/log"
