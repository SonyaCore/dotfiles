# File:         .bashrc   Bash resource file
# Author:   sonyadream <sonyadream@protonmail.com>

export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH="$HOME/.local/bin:$PATH"

#export npm_config_prefix="$HOME/.local"

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec gnome-shell --wayland
#fi

#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#        source /etc/profile.d/vte.sh
#fi

## Xresource
#xrdb ~/.Xresources
#clear

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Bind Keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind -m vi-insert -x '"\eh": run-help'
bind -m emacs -x     '"\eh": run-help'

run-help() { help "$READLINE_LINE" 2>/dev/null || man "$READLINE_LINE"; }
shopt -s checkwinsize

[[ $- != *i* ]] && return
alias ls='ls --color=auto'
export PS1="\u@\h:\W/> \[$(tput sgr0)\]"

#screenfetch
#uname -a
#alias ssh='sshpass -p" " ssh 192.168.43.95'
alias vi='vim'
alias droidpavu='pacmd load-module module-alsa-source device=hw:Loopback,1,0'
alias winebat="wine cmd /c "
alias pipewire-start="systemctl --user restart pipewire-pulse.socket pipewire-pulse.service pipewire.service pipewire.socket"
alias mirrorsync='sudo reflector --verbose --latest 50 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias anaconda='source /opt/anaconda/bin/activate root'
alias anacondad='source /opt/anaconda/bin/deactivate root'
alias vfioenable='systemctl enable --now libvirtd nmb.service smb.service'
alias vfiodisable='systemctl disable libvirtd nmb.service smb.service'
alias Xephyr_run='Xephyr -screen 1280x720 -ac :1 -glamor +xinerama'
alias monerojournal='sudo journalctl -u moneroocean_miner -f'
alias discord-canary='discord-canary ---enable-features=UseOzonePlatform --ozone-platform=wayland --gl'
#alias chromium='chromium --enable-features=UseOzonePlatform --enable-gpu --ozone-platform=wayland --enable-native-gpu-memory-buffers --ignore-gpu-blocklist --enable-gpu-rasterization --oauth2-client-id=490643172288-l42md654q3l5jb3a1np58459vfqvnisc.apps.googleusercontent.com --oauth2-client-secret=2-X-0Fo4Yzn8JgNkMLv7xGB2'
