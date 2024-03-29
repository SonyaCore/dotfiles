# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin:/sbin
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty3" ]; then
#  XDG_CURRENT_DESKTOP=sway XDG_SESSION_DESKTOP=sway XDG_SESSION_TYPE=wayland SDL_VIDEODRIVER=wayland _JAVA_AWT_WM_NONREPARENTING=1 exec sway
#fi

#if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then
#  XDG_SESSION_TYPE=X11 exec dbus-run-session startxfce4
#fi

#if [[ -z $DISPLAY && $(tty) == /dev/tty2 && $XDG_SESSION_TYPE == tty ]]; then
#  MOZ_ENABLE_WAYLAND= XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
#fi


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fishy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
 zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
#source ~/.func

HISTFILE=~/.histfile

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vi'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
SSH=
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias droidpavu='pacmd load-module module-alsa-source device=hw:Loopback,1,0'
alias winebat="wine cmd /c "
alias pipewire-start="systemctl --user restart pipewire-pulse.socket pipewire-pulse.service pipewire.service pipewire.socket"
alias Xephyr_run='Xephyr -screen 1280x720 -ac :1 -glamor +xinerama'
alias notion-app-enhanced='GDK_DPI_SCALE=1.2 notion-app-enhanced'
alias sshagent='eval "$(ssh-agent -s)" && ssh-add -K ~/.ssh/${SSH}'

# ADB WM Size
alias adb_wm_reset='adb shell wm size reset && adb shell wm density 420'
alias adb_wm_resize='adb shell wm size 1080x1100 && adb shell wm density 332' # resize phone res to 1080x1100

# VFIO Command
alias vfioenable='systemctl enable --now libvirtd nmb.service smb.service'
alias vfiodisable='systemctl disable libvirtd nmb.service smb.service'


fpath+=${ZDOTDIR:-~}/.zsh_functions
# Created by fodev.org
function fod(){
    case $1 in
        "--enable" | "-e")
            export http_proxy=http://fodev.org:8118/
            export https_proxy=https://fodev.org:8118/
            export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
            export HTTP_PROXY=http://fodev.org:8118/
            export HTTPS_PROXY=https://fodev.org:8118/
            export NO_PROXY="localhost,127.0.0.1,localaddress,.localdomain.com"
            echo "enable fod proxy !"
        ;;
        "--disable" | "-d")
            unset http_proxy
            unset https_proxy
            unset no_proxy
            unset HTTP_PROXY
            unset HTTPS_PROXY
            unset NO_PROXY
            echo "disable fod proxy !"
        ;;
        *)
            echo "Usage : fod [-e | --enable] [-d | --disable]"
            echo "Example : "
            echo "  fod --enable for enable fod proxy "
            echo "  fod --disable for disable fod proxy "
        ;;
    esac
}
