export FNM_PATH="${FNM_PATH:-$XDG_DATA_HOME/fnm}"

path=(
    $FNM_PATH(N)
    $path
)

if (( $+commands[fnm] )); then
    eval "$(fnm env --use-on-cd --shell zsh)"
fi
