#!/bin/zsh

# for alacritty
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

# for kitty
KITTY_CLASS="kittydropdown"

ACTIVE=$(xdotool getactivewindow)
WIN_ID=$(xdotool search --class kittydropdown)


alias startKtty="kitty --class $KITTY_CLASS --title KittyTerminal"

if [ -z "$WIN_ID" ]; then
    # 启动 Kitty
    startKtty  &
elif [[ "$WIN_ID" == "$ACTIVE" ]]; then
    xdotool windowunmap $WIN_ID
else
    # 切换可见性
    xdotool windowmap $WIN_ID
fi
