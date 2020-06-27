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

# anaconda env set
export PATH=$HOME/anaconda3/bin:$PATH

# metasploit-framework env set
export PATH=/opt/metasploit-framework/bin:$PATH

# curl env set
export PATH=/usr/local/opt/curl/bin:$PATH

# llvm env set
export PATH=/usr/local/opt/llvm/bin:$PATH

# autojump env set
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Set Your Alias

# use lsd instead of ls
alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias cleariconcache='sudo rm -rf /Library/Caches/com.apple.iconservices.store'
alias localip='ipconfig getifaddr en0'
alias flushdns='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias ip='ipconfig getifaddr en0'

# use bat instead of cat
alias cat='bat'

# proxychains
alias pc='proxychains4 -f ~/.proxychains.conf'

set -o emacs

# nvm env set
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
