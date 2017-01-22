case "${OSTYPE}" in
    darwin*)	# Mac
	    df -hl
        export WORKON_HOME=$HOME/.virtualenvs
        source /usr/local/bin/virtualenvwrapper.sh;;
    linux*)	# Linux
	    alias emacs='/usr/bin/emacs -nw'
        alias ls="ls --color=auto"
        alias ll="ls -al"
        alias open='xdg-open';;
    cygwin*)    # Cygwin
	    alias open='cygstart'
        alias ls="ls --color=auto"
        alias ll="ls -al";;
esac

alias sudo='sudo '
export TERM="xterm-256color"
function chpwd() { ls -A -G -F}

autoload -U promptinit
promptinit
autoload -U compinit
compinit
setopt correct
zstyle ':completion:*:default' menu select=1

## Color
autoload colors
colors
export LSCOLORS=GxFxDxDxhxDgDxabagacad
export LS_COLORS='di=01;36:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=42;30'
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

## Autocomplete-Colors
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format '%F{YELLOW}%d'$DEFAULT
zstyle ':completion:*:warnings' format '%F{RED}No matches for:''%F{YELLOW} %d'$DEFAULT
zstyle ':completion:*:descriptions' format '%F{YELLOW}completing %B%d%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'$DEFAULT
zstyle ':completion:*' group-name ''

## History
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt share_history
setopt append_history
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_expand

## その他プラグイン
setopt auto_pushd
setopt auto_cd
setopt correct
setopt list_packed
setopt no_beep
setopt nonomatch

PROMPT="[%F{cyan}%B%n%b%f@%F{magenta}%M%f]%#"
RPROMPT="[%F{green}%d%f]"

if [ $(id -u) != 0 ]; then
    if [ ! $TMUX ]; then
        if $(tmux has-session 2> /dev/null); then
            tmux attach
        else
            if [ $SSH_CLIENT ]; then
                tmux -f ~/.tmux.conf.ssh
            else
                tmux -f ~/.tmux.conf
            fi
        fi
    fi
fi
