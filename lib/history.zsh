setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY

HISTFILE=${XDG_DATA_HOME:-~/.local/share}/zsh/history
[[ -f $HISTFILE ]] || { mkdir -p ${HISTFILE:h} && touch $HISTFILE }
HISTSIZE=5000
SAVEHIST=10000
