# Created by newuser for 5.8.1
# Extend $PATH without duplicates
_extend_path() {
  [[ -d "$1" ]] || return

  if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
    export PATH="$1:$PATH"
  fi
}
_extend_path "$HOME/.local/bin"
_extend_path "$HOME/.cargo/bin"
_extend_path "$HOME/.volta/bin"

# ------------------------------------------------------------------------------
# Oh My Zsh
# ------------------------------------------------------------------------------
ZSH_DISABLE_COMPFIX=true

# OMZ is managed by Sheldon
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"

plugins=(
  history-substring-search
  git
  npm
  yarn
  volta
  sudo
  extract
  ssh-agent
  gpg-agent
  vscode
  common-aliases
  command-not-found
  docker
)

eval "$(sheldon source)"
# export VOLTA_HOME="$HOME/.volta"
# export PATH="$VOLTA_HOME/bin:$PATH"
# test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)
eval "$(starship init zsh)"
GPG_TTY=$(tty)
export GPG_TTY