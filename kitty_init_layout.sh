#!/bin/zsh
# 创建水平分割
kitty @ launch --location=hsplit --cwd=current
# 调整左边窗口宽度为 2/3
kitty @ resize-window --axis=horizontal --increment -33
# 在右边窗口中创建垂直分割
kitty @ launch --location=vsplit --cwd=current
# kitty @ launch --location=vsplit --cwd=current
kitty @ focus-window --match neighbor:left
