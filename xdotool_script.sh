#!/bin/zsh

ACTIVE=$(xdotool getactivewindow)
WIN_ID=$(xdotool search --class AlacrittyDropdown)

ALACRITTY_CLASS="AlacrittyDropdown"
alias startAtty="alacritty --class AlacrittyDropdown"

if [ -z "$WIN_ID" ]; then
    # 启动 Alacritty
    startAtty  &
elif [[ "$WIN_ID" == "$ACTIVE" ]]; then
    xdotool windowunmap $WIN_ID
else
    # 切换可见性
    xdotool windowmap $WIN_ID
fi
