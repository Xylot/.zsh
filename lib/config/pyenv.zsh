export PYENV_ROOT="${PYENV_ROOT:-$XDG_DATA_HOME/pyenv}"

path=(
    $PYENV_ROOT/bin(N)
    $path
)
