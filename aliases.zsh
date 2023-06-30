#
# Aliases
#

# Enable aliases to be sudo’ed
#   http://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
# alias sudo='sudo '

_exists() {
  command -v $1 > /dev/null 2>&1
}

# Avoid stupidity with trash-cli:
# https://github.com/sindresorhus/trash-cli
# or use default rm -i
# if _exists trash; then
#   alias rm='trash'
# fi
# command_exists() {
#     command -v "$@" >/dev/null 2>&1
# }
# #exa
# if command_exists exa; then
#     alias exa="exa --icons --group-directories-first"
#     alias ls="exa"
#     alias la="exa -a"
#     alias ll="exa --git -lh"
#     alias lla="exa --git -lha"
# else
#     alias ls="ls --color --group-directories-first"
#     alias ll="ls -lh"
#     alias la="ls -A"
#     alias lla="ll -A"
# fi

# Just bcoz clr shorter than clear
alias clr='clear'

# Go to the /home/$USER (~) directory and clears window of your terminal
alias q="~ && clear"

# Folders Shortcuts
[ -d ~/Projects ]             && alias pj='cd ~/Projects'
[ -d ~/Projects/Forks ]       && alias pjf='cd ~/Projects/Forks'
[ -d ~/Projects/Job ]         && alias pjj='cd ~/Projects/Bootcamp'
[ -d ~/Projects/Playground ]  && alias pjl='cd ~/Projects/Playground'
[ -d ~/Projects/Repos ]       && alias pjr='cd ~/Projects/Repos'

# Commands Shortcuts
# alias e="$EDITOR"
# alias -- +x='chmod +x'
# alias x+='chmod +x'

# Run scripts
# alias update="source $DOTFILES/scripts/update"
# alias bootstap="source $DOTFILES/scripts/bootstrap"

# Quick jump to dotfiles
alias dotfiles="code $DOTFILES"

# Quick reload of zsh environment
alias reload="source $HOME/.zshrc"

# My IP
alias myip='ifconfig | sed -En "s/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p"'

# Show $PATH in readable view
alias path='echo -e ${PATH//:/\\n}'

# Download web page with all assets
alias getpage='wget --no-clobber --page-requisites --html-extension --convert-links --no-host-directories'

# Download file with original filename
alias get="curl -O -L"

# # Use tldr as help util
# if _exists tldr; then
#   alias help="tldr"
# fi

alias git-root='cd $(git rev-parse --show-toplevel)'

if _exists lsd; then
  unalias ls
  alias ls='lsd'
  alias lt='lsd --tree'
fi

# # cat with syntax highlighting
# # https://github.com/sharkdp/bat
# if _exists bat; then
#   # Run to list all themes:
#   #   bat --list-themes
#   export BAT_THEME='base16'
#   alias cat='bat'
# fi
