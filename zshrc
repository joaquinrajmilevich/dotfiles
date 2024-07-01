
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ~/.zshrc
export SSH_AUTH_SOCK=~/.1password/agent.sock
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"

# Oh My Zsh settings here
plugins=(
  history-substring-search
  git
  npm
#  yarn
  sudo
  extract
#   ssh-agent
#   gpg-agent
  vscode
#  common-aliases
  command-not-found
  docker
#  bun
)
eval "$(sheldon source)"
