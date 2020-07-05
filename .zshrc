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

# colorls tab completion

source $(dirname $(gem which colorls))/tab_complete.sh

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

# use colorls instead of ls

alias lc='colorls -lA --sd'
alias lsf='colorls --sf'
alias lgs='colorls --gs'
alias lt='colorls --tree'
alias lr='colorls --report'
alias ll='colorls --long'
alias lf='colorls --files'
alias ld='colorls --dirs'
alias la='colorls --all'


alias localip='ipconfig getifaddr en0'
alias flushdns='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias ip='ipconfig getifaddr en0'

# use bat instead of cat
alias cat='bat'

# proxychains
alias pc='proxychains4 -f ~/.proxychains.conf'
alias pcpm='proxychains4 -f ~/.proxychains-proxyman.conf'

set -o emacs

# nvm env set
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
