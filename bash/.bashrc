# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History settings
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

# Better directory navigation
shopt -s autocd
shopt -s cdspell
shopt -s dirspell

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Better ls
alias ll='ls -lah'
alias la='ls -A'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

# System
alias update='sudo pacman -Syu'

# Dotfiles
alias dots='cd ~/bode/dotfiles && code .'

# Safety
alias rm='rm -i'

#----------# VPN SHORTCUTS #----------#
alias vpn-up='sudo wg-quick up wg0-client'
alias vpn-down='sudo wg-quick down wg0-client'
alias vpn-status='sudo wg show'

#----------# Local Bin Path #----------#
export PATH="$HOME/.local/bin:$PATH"

# Initialize Starship
eval "$(starship init bash)"

# Wallpaper management
alias prep-walls='prepare-wallpapers'

# Unlock encrypted personal folder
alias unlock-personal='sudo cryptsetup open ~/Documents/personal.luks personal && sudo mount /dev/mapper/personal ~/Documents/Personal_unencrypted'

# Lock (unmount) personal folder
alias lock-personal='sudo umount ~/Documents/Personal_unencrypted && sudo cryptsetup close personal'

# Unlock encrypted usb
alias unlock-usb='sudo mount /dev/sda1 /mnt/usb && sudo gocryptfs /mnt/usb/backup_encrypted /mnt/usb/backup_plain && sudo chown -R mkultra:mkultra /mnt/usb/backup_plain'

# Lock Encrypted usb0
alias lock-usb='sudo umount /mnt/usb/backup_plain && sudo umount /mnt/usb'
eval "$(direnv hook bash)"
eval "$(direnv hook bash)"

#----------# TAILSCALE SHORTCUTS #----------#
alias ts-status='tailscale status'
alias ts-up='sudo tailscale up --login-server https://headscale.datamountainsolutions.com'
alias ts-down='sudo tailscale down'
alias ts-ip='tailscale ip'
