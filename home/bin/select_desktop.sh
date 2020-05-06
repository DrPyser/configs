#! /usr/bin/env bash
#
select_desktop () {
    for m in $(bspc query -M --names); do
        bspc query -D --names -m $m | xargs -Id echo "$m:d";
    done | dmenu -b 
}

get_desktop_id () {
	echo $1 | {
		IFS=\: read monitor desktop;
		bspc query -D -m $monitor -d $desktop.local;
	}
}

SELECTED_DESKTOP=$(select_desktop)

DESKTOP_ID=$(get_desktop_id $SELECTED_DESKTOP)

echo $DESKTOP_ID
