SOURCE_PLUGINS_DIR=$ZDOTDIR/lib/splugins

for plugin in $SOURCE_PLUGINS_DIR/*.zsh; do
    source $plugin
done
