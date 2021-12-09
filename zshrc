# Plugins
# =============================================

    # Load the Antibody plugin manager for zsh.
    source <(antibody init)

    # Setup required env var for oh-my-zsh plugins
    export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

    # oh-my-zsh
    antibody bundle robbyrussell/oh-my-zsh
    antibody bundle robbyrussell/oh-my-zsh path:plugins/docker
    antibody bundle robbyrussell/oh-my-zsh path:plugins/docker-compose
    antibody bundle robbyrussell/oh-my-zsh path:plugins/git
    antibody bundle robbyrussell/oh-my-zsh path:plugins/git-flow
    antibody bundle robbyrussell/oh-my-zsh path:plugins/gpg-agent
    antibody bundle robbyrussell/oh-my-zsh path:plugins/rsync
    antibody bundle robbyrussell/oh-my-zsh path:plugins/ssh-agent
    antibody bundle robbyrussell/oh-my-zsh path:plugins/tmux
    antibody bundle robbyrussell/oh-my-zsh path:plugins/tmuxinator
    antibody bundle robbyrussell/oh-my-zsh path:plugins/z

    # Others
    antibody bundle zsh-users/zsh-autosuggestions

    # Theme
    antibody bundle dracula/zsh

# Configuration
# =============================================

    HYPHEN_INSENSITIVE="true"
    ENABLE_CORRECTION="false"
    COMPLETION_WAITING_DOTS="true"
    HIST_STAMPS="yyyy-mm-dd"

    typeset -U path cdpath fpath

    # Vim mode
    bindkey -v
    export KEYTIMEOUT=1

    export GIT_EDITOR=vim

    path=(
        $HOME/.local/bin
        $HOME/.bin
        $HOME/bin
        $HOME/.rvm/bin
        $path
    )

    setopt auto_cd
    cdpath=(
        $HOME/Code
    )

    zstyle ':completion:*' group-name ''
    zstyle ':completion:*:descriptions' format %d
    zstyle ':completion:*:descriptions' format %B%d%b
    zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
            'local-directories named-directories'

    export LANG=en_GB.UTF-8
    export LC_ALL=en_GB.UTF-8
    export LC_MESSAGES="C"
    export VISUAL=vim
    export EDITOR='vim'
    export NVIM_LISTEN_ADDRESS='/tmp/nvimsocket'

    unsetopt sharehistory

# Aliases
# =============================================

    alias ls='ls --color=auto'
    alias ll='ls --color=auto -al'
    alias tmux='tmux -u'
    alias mux='tmuxinator'
    alias vim=nvim

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh
