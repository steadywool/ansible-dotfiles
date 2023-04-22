#!/bin/zsh

# Git
alias g='git'
alias gp='git push --verbose'
alias ga='git add --verbose'
alias gaa='git add --all --verbose'
alias gc='git commit -am'
alias gca='git commit -av'

# Tmux
alias ta='tmux attach'
alias td='tmux detach'
alias tn='tmux new'

# Rclone copy & sync
alias mega_copy='rclone copy -P mega: $HOME/Documents/Cours'
alias mega_sync='rclone sync -P $HOME/Documents/Cours mega:'

# Sudo
alias sudo='sudo '

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color'

# Usbguard
alias usbl='usbguard list-devices -t'
alias usba='usbguard allow-device'
alias usbp='usbguard allow-device --permanent'

# Calcurse
alias todo='calcurse -Q'