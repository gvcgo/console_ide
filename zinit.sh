# add content below in .zshrc
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# zinit plugins

# Load pure theme
# zinit light spaceship-prompt/spaceship-prompt
zinit ice pick"async.zsh" src"pure.zsh" # with zsh-async library that's bundled with it.
zinit light sindresorhus/pure

# Plugin history-search-multi-word loaded with investigating.
zinit ice wait
zinit load zdharma-continuum/history-search-multi-word

# Two regular plugins loaded without investigating.
zinit ice wait
zinit light zsh-users/zsh-autosuggestions
zinit ice wait
zinit light zdharma-continuum/fast-syntax-highlighting

# Snippet
zinit ice wait
zinit snippet https://gist.githubusercontent.com/hightemp/5071909/raw/

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

zi for \
    atload"zicompinit; zicdreplay" \
    blockf \
    lucid \
    wait \
  zsh-users/zsh-completions
