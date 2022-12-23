export ZFUNCDIR=$ZDOTDIR/functions

function autoload-dir {
    [[ -d "$1" ]] || return 1

    fpath+="$1"

    for function in "$1"/*(.N); do
        autoload -Uz $function
    done
}

autoload-dir "$ZFUNCDIR"
