CARGO_PLUGINS_DIR=$ZDOTDIR/lib/cplugins

if (( $+commands[cargo] )); then

    echo 'Updating cargo plugins...'

    while read plugin; do

        cargo install --quiet --locked $plugin &&
            [ -f $CARGO_PLUGINS_DIR/$plugin.zsh ] &&
            source $CARGO_PLUGINS_DIR/$plugin.zsh &&

    done < $ZDOTDIR/.cplugins

else
    echo 'Cargo is not installed. Applications installed with Cargo will be skipped.'
fi
