#! /bin/bash

xcompmgr &
BATT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

power() 
{
	PWR=$(cat /sys/class/power_supply/BAT0/capacity)
	echo -e "Battery: $PWR%"
}

thermal()
{
	CPU=$(acpi -t | awk '{print $4}')
	echo -e "|Thermals: $CPU °C"
}

feh --bg-scale ~/dwm-orange/Wallpapers/Porco_Rosso.jpg
while true; do
	xsetroot -name "$(thermal) | $(power) | Date: $(date '+%Y-%m-%d') | Time: $(date +%H:%M) |"
	sleep 1s
done &
