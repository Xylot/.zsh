SOURCE_PLUGINS_DIR=$ZDOTDIR/lib/splugins

echo 'Updating source plugins...'

for plugin in $SOURCE_PLUGINS_DIR/*.zsh; do
    source $plugin
done
