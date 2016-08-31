#
# Example .zshrc file for zsh 4.0
#
# .zshrc is sourced in interactive shells. It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#

# THIS FILE IS NOT INTENDED TO BE USED AS /etc/zshrc, NOR WITHOUT EDITING

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export CC=/Developer/usr/bin/clang
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
export ARCHFLAGS="-arch x86_64"



# Set prompts
PROMPT="%F{yellow}$(uname)%f%F{red}[%~]%f%F{blue}>%f%F{white}>%f%F{yellow}>%f" # default prompt

set noclobber

function killport() { lsof -i TCP:$1 | awk '/LISTEN/ {print $2}' | xargs kill -9 }
function r() { grep "$1" ${@:2} -R . }
function gpw() { LC_ALL=C tr -dc 'A-Za-z0-9_!#%&@^()+-' < /dev/urandom | head -c12; echo }
function airport() { /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport }
function reload() { source ~/.zshrc }
#function man() {
#	env \
#		LESS_TERMCAP_mb=$'\e[1;31m' \
#		LESS_TERMCAP_md=$'\e[1;31m' \
#		LESS_TERMCAP_me=$'\e[0m' \
#		LESS_TERMCAP_se=$'\e[0m' \
#		LESS_TERMCAP_so=$'\e[1;44;33m' \
#		LESS_TERMCAP_ue=$'\e[0m' \
#		LESS_TERMCAP_us=$'\e[1;32m' \
#		man "$@"
#}
alias ls="ls -G"

