#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias localip='ipconfig getifaddr en0'
alias cdns='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias pc='proxychains4 -f ~/.proxychains.conf'
alias ss='ss-local -c ~/.ssconf.json'
alias cat='bat'
alias ip='ipconfig getifaddr en0'
alias ls='colorls -1'
alias la='colorls --all'
alias ld='colorls --dirs'
alias lf='colorls --files'
alias ll='colorls --long'
alias lr='colorls --report'
alias lt='colorls --tree'
alias sl='/usr/local/Cellar/sl/5.02/bin/sl'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(command_execution_time dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_BATTERY_ICON=$' \uF3CA '
POWERLEVEL9K_BATTERY_STAGES=($' \uF244 ' $' \uF243 ' $' \uF242 ' $' \uF241 ' $' \uF240 ')
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_VCS_GIT_ICON=$' \uF113 '
POWERLEVEL9K_EXECUTION_TIME_ICON=$' \uF017 '
POWERLEVEL9K_NETWORK_ICON=$' \uF0E8 '
POWERLEVEL9K_HOME_ICON=$' \uF015 '
POWERLEVEL9K_HOME_SUB_ICON=$' \uF115 '
POWERLEVEL9K_FOLDER_ICON=$' \uF114 '
POWERLEVEL9K_OK_ICON=$'\uF058 '
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uF071 '
POWERLEVEL9K_VCS_COMMIT_ICON=$' \uF321 '

set -o emacs

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/opt/libpcap/bin:$PATH"
