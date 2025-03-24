#!/bin/zsh

if [[ -n "$TMUX" ]]; then
    # 创建一个垂直分割的面板
    tmux split-window -h

    # 调整左边的面板占 2/3 的宽度
    tmux resize-pane -R 30

    # 在右侧面板中再次进行水平分割，创建两个面板
    tmux split-window -v

    tmux select-pane -R
fi
