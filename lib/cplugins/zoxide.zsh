if (( $+commands[zoxide] )); then
    eval "$(zoxide init zsh)"
else
    echo 'Zoxide failed to insall.'
fi
