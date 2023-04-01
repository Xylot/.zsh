export TMUX_CONFIG="${TMUX_CONFIG:-$XDG_CONFIG_HOME/tmux/.tmux.conf}"
[[ -e $TMUX_CONFIG ]] || { mkdir -p $TMUX_CONFIG:h && touch $TMUX_CONFIG }
alias tmux='tmux -f "$TMUX_CONFIG"'
