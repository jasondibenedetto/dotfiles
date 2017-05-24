# editor
set -x EDITOR atom

# shortcut to dotfiles
set -x DOTFILES "$HOME/code/dotfiles"

# shortcut to fish config
set -x FISH "$HOME/.config/fish"

# aliases
source "$FISH/aliases.fish"

# paths
source "$FISH/paths.fish"

# local
source "$FISH/local.fish"
