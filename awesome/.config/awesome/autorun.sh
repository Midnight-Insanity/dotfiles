#!/usr/bin/env bash
function run1x {
    if ! pgrep -f $1 ; then
        $@ &
    fi
}

xset s off
xset s -dpms
# run1x xcompmgr
# run picom
