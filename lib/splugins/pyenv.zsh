if (( ! $+commands[pyenv] )); then
    echo 'Installing pyenv...'
    curl https://pyenv.run | bash > /dev/null
    source $ZDOTDIR/lib/config/pyenv.zsh
fi

if (( $+commands[pyenv] )); then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
else
    echo 'pyenv failed to insall.'
fi
