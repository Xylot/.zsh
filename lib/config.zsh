if [[ "$OSTYPE" == darwin* ]] && (( $+commands[brew] )); then
    source $ZDOTDIR/lib/config/homebrew.zsh
fi

source $ZDOTDIR/lib/config/less.zsh
source $ZDOTDIR/lib/config/tmux.zsh
source $ZDOTDIR/lib/config/rust.zsh

path=(
    ~/bin(N)
    /usr/local/{bin,sbin}(N)
    $path
)
