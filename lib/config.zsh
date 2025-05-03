if [[ "$OSTYPE" == darwin* ]] && (( $+commands[brew] )); then
    source $ZDOTDIR/lib/config/homebrew.zsh
fi

source $ZDOTDIR/lib/config/less.zsh
source $ZDOTDIR/lib/config/tmux.zsh
source $ZDOTDIR/lib/config/rust.zsh
source $ZDOTDIR/lib/config/uv.zsh
source $ZDOTDIR/lib/config/fnm.zsh
source $ZDOTDIR/lib/config/zoxide.zsh

path=(
    ~/bin(N)
    /usr/local/{bin,sbin}(N)
    $XDG_DATA_HOME/{bin,sbin}(N)
    $path
)
