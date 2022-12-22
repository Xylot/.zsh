if (( ! $+commands[pyenv] )); then
    curl https://pyenv.run | bash > /dev/null
    source $ZDOTDIR/lib/config/pyenv.zsh
fi

if (( $+commands[pyenv] )); then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
else
    echo 'pyenv failed to insall.'
fi
