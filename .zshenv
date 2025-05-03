export ZDOTDIR=${ZDOTDIR:-~/.config/zsh}
export ZGEN_DIR=${ZGEN_DIR:-~/.config/zgenom}

export ZSH=${ZSH:-~/.config/oh-my-zsh}
export ZSH_CUSTOM=${ZSH_CUSTOM:-~/.config/oh-my-zsh/custom}

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-~/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-~/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-~/.local/share}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-~/.xdg}

if [[ "$OSTYPE" == darwin* ]]; then
    export XDG_DESKTOP_DIR=${XDG_DESKTOP_DIR:-$HOME/Desktop}
    export XDG_DOCUMENTS_DIR=${XDG_DOCUMENTS_DIR:-$HOME/Documents}
    export XDG_DOWNLOAD_DIR=${XDG_DOWNLOAD_DIR:-$HOME/Downloads}
    export XDG_MUSIC_DIR=${XDG_MUSIC_DIR:-$HOME/Music}
    export XDG_PICTURES_DIR=${XDG_PICTURES_DIR:-$HOME/Pictures}
    export XDG_VIDEOS_DIR=${XDG_VIDEOS_DIR:-$HOME/Videos}
    export XDG_PROJECTS_DIR=${XDG_PROJECTS_DIR:-$HOME/Projects}
fi

export PAGER="${PAGER:-less}"

export TZ='America/Chicago'
export LANG="en_US.UTF-8"
export LANGUAGE="en"
export LC_ALL="en_US.UTF-8"

typeset -gU path cdpath fpath

if [[ "$OSTYPE" == darwin* ]]; then
    export SHELL_SESSIONS_DISABLE=1
fi
