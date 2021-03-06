# Universal sorting String comparator
export LC_ALL=C

# Bash history
case "$TERM" in
xterm*|rxvt*)
  bind '"[A":history-search-backward'
  bind '"[B":history-search-forward'
  ;;
esac
HISTFILESIZE=10000
HISTSIZE=10000
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

# Set the default editor to vim
export EDITOR=vim

# See MacPorts commands in $PATH (with GNU tools by default)
export PATH="/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:${PATH}"
export MANPATH="/opt/local/share/man:${MANPATH}"

# Local bashrc (e.g. machine-specific paths)
if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi


# If not running interactively, don't do anything past this point
[ -z "$PS1" ] && return


# Prompt
if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Setting output for GNUPLOT
export GNUTERM=x11

# MacPorts Bash shell command completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
