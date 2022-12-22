FZF_DIR=$ZDOTDIR/.splugins/fzf

if [[ ! -f $XDG_CONFIG_HOME/fzf/fzf.zsh ]]; then
    [[ -e $FZF_DIR ]] || git clone --quiet --depth=1 https://github.com/junegunn/fzf $FZF_DIR
    $FZF_DIR/install --xdg --key-bindings --completion --no-update-rc --no-bash --no-fish
fi

if [[ -f $XDG_CONFIG_HOME/fzf/fzf.zsh ]]; then
    source $XDG_CONFIG_HOME/fzf/fzf.zsh
else
    echo 'fzf failed to insall.'
fi
