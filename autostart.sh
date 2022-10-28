#! /bin/bash
# This is my dwm autostart file
# I have patched dwm with autostart.diff but you could just add this to .xinitrc

xcompmgr &                                                # Compositor for transparency
feh --bg-scale ~/dwm-orange/Wallpapers/Porco_Rosso.jpg    # Wallpaper (alternatively you could do ./fehbg)
./.dotfiles/dwmbar &                                      # Statusbar script (remember to set the correct path to this script)
