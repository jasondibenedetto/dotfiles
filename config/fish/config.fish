# editor
set -x EDITOR atom

# shortcut to dotfiles
set -x DOTFILES "$HOME/.dotfiles"

# shortcut to fish config
set -x FISH "$HOME/.config/fish"

# aliases
source "$FISH/aliases.fish"

# paths
source "$FISH/paths.fish"
