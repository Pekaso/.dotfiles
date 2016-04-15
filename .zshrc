case "${OSTYPE}" in
    darwin*)	# Mac
	    df -hl;;
    linux*)	# Linux
	    alias emacs='/usr/bin/emacs -nw';;
        
    cygwin*)    # Cygwin
	    alias open='cygstart';;
esac

export TERM="xterm-256color"

autoload -U promptinit
promptinit
autoload -U compinit
compinit
setopt correct
zstyle ':completion:*:default' menu select=1

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_expand

setopt auto_pushd
setopt auto_cd
setopt correct
setopt list_packed

PROMPT="[%F{cyan}%B%n%b%f@%F{magenta}%M%f]%#"
RPROMPT="[%F{green}%d%f]"

# tmux自動起動
if [ -z $TMUX ] && [ $UID ! -eq 100030 ]; then
    tmux -2
fi
