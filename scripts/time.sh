#!/bin/bash

CATEGORIES=(
	"WORK"
	"SCHOOL"
	"WASTE"
	"STOP"
)

selected=$(printf "%s\n" "${CATEGORIES[@]}" | fzf --margin 10% --color=16 --bind 'q:abort')
fzf_status=$?

if [[ $fzf_status -ne 0 || -z "$selected" ]]; then
    exit 0
fi

tmux set -g status-interval 5

if [[ "$selected" == "STOP" ]]; then
    timew stop
    tmux set -g status-right ""
else
    timew start "$selected"
    tmux set -g status-right "$selected #(timew | awk '/^ *Total/ {print \$NF}')"
fi
