#!/bin/sh

# PLEASE FUCKING WORK
#

dbus-update-activation-environment --systemd DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP
systemctl --user import-environment DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP

/usr/libexec/xdg-desktop-portal &
/usr/libexec/xdg-desktop-portal-gtk &

for output in $(xrandr | grep " connected" | cut -d" " -f1); do
    xrandr --output "$output" --mode 1920x1080
done

#save arandr stuff here
~/.screenlayout/mylayout.sh &

xwallpaper --zoom /usr/share/shit-wallpapers/temp.png

#if feh is used 
~/.fehbg &

nm-applet &

blueman-applet &

dunst &

hplip-systray &

flameshot &

#clipit no more
diodon &

slstatus &

# vsync breaks multimonitors fuck that bullshit
picom --backend xrender --no-vsync &

/usr/libexec/polkit-mate-authentication-agent-1 &

volumeicon &

if command -v calamares >/dev/null 2>&1; then
    sudo calamares &
fi

#/usr/bin/dbus-launch dwm

exec dwm

