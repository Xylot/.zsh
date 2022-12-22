export LESSKEY="${LESSKEY:-$XDG_CONFIG_HOME/less/lesskey}"
export LESSHISTFILE="${LESSHISTFILE:-$XDG_CACHE_HOME/less/history}"
[[ -f $LESSHISTFILE ]] || { mkdir -p $LESSHISTFILE:h && touch $LESSHISTFILE }
