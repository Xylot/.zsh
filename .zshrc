# load zprof first if we need to profile
[[ ${ZPROFRC:-0} -eq 0 ]] || zmodload zsh/zprof
rc="ZPROFRC=1 zsh"

source $ZDOTDIR/lib/functions.zsh

source $ZDOTDIR/lib/history.zsh

# Plugins that are installed through antidote
source $ZDOTDIR/lib/antidote.zsh
source $ZDOTDIR/lib/prompt.zsh

source $ZDOTDIR/lib/config.zsh

# Plugins that are installed through cargo
source $ZDOTDIR/lib/cargo-installer.zsh

# Plugins that are installed from source
source $ZDOTDIR/lib/source-installer.zsh

source $ZDOTDIR/.zaliases

# local settings
[[ ! -f ~/.local/zsh/zshrc_local.zsh ]] || source ~/.local/zsh/zshrc_local.zsh

# done profiling
[[ ${ZPROFRC:-0} -eq 0 ]] || { unset ZPROFRC && zprof }
