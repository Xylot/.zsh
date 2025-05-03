# load zprof first if we need to profile
[[ ${ZPROFRC:-0} -eq 0 ]] || zmodload zsh/zprof
rc="ZPROFRC=1 zsh"

source "$ZGEN_DIR/zgenom.zsh"
zgenom autoupdate

if [ -z "${DISBALE_ZSH_PLUGINS}" ] && [ -z "$(zgenom saved)" ]; then
    zgenom ohmyzsh 

    zgenom load zsh-users/zsh-autosuggestions
    zgenom load zsh-users/zsh-completions
    zgenom load zsh-users/zsh-syntax-highlighting

    zgenom save
    zgenom compile $ZDOTDIR
fi

source $ZDOTDIR/lib/history.zsh
source $ZDOTDIR/lib/prompt.zsh
source $ZDOTDIR/lib/config.zsh
source $ZDOTDIR/.zaliases

# local settings
[[ ! -f ~/.local/zsh/zshrc_local.zsh ]] || source ~/.local/zsh/zshrc_local.zsh

# done profiling
[[ ${ZPROFRC:-0} -eq 0 ]] || { unset ZPROFRC && zprof }
