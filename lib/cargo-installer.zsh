CARGO_PLUGINS_DIR=$ZDOTDIR/lib/cplugins

if (( $+commands[cargo] )); then

    installed=$(cargo install --list | awk '/^\w/ { print $1 }')

    while read plugin; do

        if ! grep -Fxq $plugin <<< $installed;  then
            echo "Installing Cargo plugin: $plugin" &&
                cargo install --quiet --locked $plugin &&
                [ -f $CARGO_PLUGINS_DIR/$plugin.zsh ] &&
                source $CARGO_PLUGINS_DIR/$plugin.zsh &&
        fi

    done < $ZDOTDIR/.cplugins

else
    echo 'Cargo is not installed. Applications installed with Cargo will be skipped.'
fi
