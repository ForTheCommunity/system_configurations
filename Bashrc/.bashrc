# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
# HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
# shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=0
HISTFILESIZE=0
HISTFILE=/dev/null

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# ________________Custom Configs_______________________________


# Custom Scripts
export PATH=$PATH:~/system_utils

# OTHER Binaries Directory
OTHER_BINARIES_DIR="$HOME/other_binaries"

# Custom Aliases
alias nvim='$OTHER_BINARIES_DIR/nvim-linux64/bin/nvim'
alias hx='$OTHER_BINARIES_DIR/Helix/helix-24.03-x86_64-linux/hx'
alias milkman='$OTHER_BINARIES_DIR/MilkMan/milkman-dist-linux64-bin/milkman-5.9.0/milkman.sh'
alias pororoca='$OTHER_BINARIES_DIR/Pororoca/Pororoca'


alias matrix='$OTHER_BINARIES_DIR/element-desktop-1.11.75/element-desktop'
alias telegram='$OTHER_BINARIES_DIR/Telegram/Telegram'

alias syncthing='$OTHER_BINARIES_DIR/syncthing/syncthing-linux-amd64-v1.27.10/syncthing'


# JellyFin Server
alias jellyfin='$OTHER_BINARIES_DIR/Jellyfin/jellyfin_10.9.9-amd64/jellyfin/jellyfin'

alias gh='$OTHER_BINARIES_DIR/gh_cli/bin/gh'

alias bat=batcat
alias view_pdf=evince
alias ls=lsd
alias settings=gnome-control-center

# Langs
export PATH=$PATH:/home/debian/other_binaries/golang/go/go/bin


# Cargo Custom Build Target
export CARGO_TARGET_DIR=/tmp/cargo-target

# Custom Binaries
export PATH=$PATH:~/custom_binaries

# Flatpak
alias firefox='flatpak run org.mozilla.firefox'
alias librewolf='flatpak run io.gitlab.librewolf-community'
alias obs='flatpak run com.obsproject.Studio'

# Other Exports
export media_serving_server_directory_path=/media/debian/HardDisk/Medias

# Dart Flutter Development
# Dart SDK
export PATH="$HOME/fvm/default/bin/cache/dart-sdk/bin:$PATH"

# Flutter SDK
export PATH="$HOME/fvm/default/bin:$PATH"

# Flutter Version Manager (FVM)
export PATH="$PATH:~/other_binaries/FVM/fvm-3.1.7-linux-x64/fvm"
export PATH="$PATH:~/other_binaries/FVM/fvm-3.1.7-linux-x64/fvm/src"

export PATH="~/.pub-cache/bin:$PATH"
# For Flutter Web
# to get binary path of firefox -> flatpak info --show-location org.mozilla.firefox
export CHROME_EXECUTABLE=/var/lib/flatpak/app/org.mozilla.firefox/x86_64/stable/6a16f6a509340ad3bb833c9d9aa794ed78910aa43803a7420438b880aa0a6ce0/export/bin/org.mozilla.firefox

# Android Studio
alias android_studio='~/other_binaries/AndroidStudio/android-studio-2024.1.1.13-linux/android-studio/bin/studio.sh'


# pnpm
export PNPM_HOME="/home/debian/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Load Angular CLI autocompletion.
source <(ng completion script)



export PATH=$HOME/.local/bin:$PATH
. "$HOME/.cargo/env"
