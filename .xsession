#/usr/bin/env bash

# set locale (make cyrillic input work)
export LANG=uk_UA.UTF-8
export LC_CTYPE=$LANG

# Load resources
if [ -r $HOME/.Xresources ]; then
  xrdb -merge $HOME/.Xresources
fi

# Set keyboard layout
setxkbmap -layout "us,ua,pl,ru" -option "grp:lctrl_lshift_toggle,compose:ralt,lv3:menu_switch"

# Set Crtl+Alt+BKSpace to kill
setxkbmap -option terminate:ctrl_alt_bksp

# Set mouse pointer
xsetroot -cursor_name left_ptr
#xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 8

# Set the background
if [ -x $HOME/bin/wallpaper.sh ]; then
  $HOME/bin/wallpaper.sh &
else
  #xsetroot -solid midnightblue
  xsetroot -gray
fi

# Set up an icon tray
trayer --edge top --align right --SetDockType true --SetPartialStrut true \
 --transparent true --expand true --width 6 --tint 0x000000 --height 17 --alpha 0 &

# Run xscreensaver daemon (no need inside virtual env)
#xscreensaver -nosplash &

# Run xmonad
exec xmonad
