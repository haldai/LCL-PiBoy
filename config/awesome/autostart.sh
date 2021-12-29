#!/usr/bin/env bash

function run {
    if ! pgrep $1 ; then
        $@&
    fi
}

# Startups
run nosleep on
run no_lid_suspend
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run /home/alarm/.scripts/nodimming.sh
picom --config ~/.config/picom.conf
# run fcitx5
