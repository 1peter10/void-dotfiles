# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/linmob/.zshrc'

autoload -Uz compinit
compinit
autoload -Uz promptinit
promptinit
# Further ZSH config
PROMPT='%m:%1~ %n%# '

# aliases
alias ls='ls --color=auto'

# End of lines added by compinstall
# Environment variables
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export XDG_SESSION_TYPE=wayland
export XDB_DEFAULT_LAYOUT=de
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORMTHEME=breeze
export QT_STYLE_OVERRIDE=breeze
export QT_QPA_SYSTEM_ICON_THEME=breeze
export QT_QUICK_CONTROLS_MOBILE=1
export QT_QUICK_CONTROLS_STYLE=org.kde.breeze
export KIRIGAMI_LOWPOWER_HARDWARE=1
export BEMENU_BACKEND=wayland
export PATH="$PATH:/home/$USER/.local/bin"

# Start Sway
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi
