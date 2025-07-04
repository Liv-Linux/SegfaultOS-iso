export PATH=$PATH:$HOME/.local/share/flatpak/exports/bin
export PATH=$PATH:/var/lib/flatpak/exports/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:$HOME/.local/bin
 
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi
 
