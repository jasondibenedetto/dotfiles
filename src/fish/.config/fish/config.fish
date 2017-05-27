# editor
set -x EDITOR atom

# aliases
source "$HOME/.config/fish/aliases.fish"

# paths
source "$HOME/.config/fish/paths.fish"

# local
if test -f "$HOME/.config/fish/local.fish"
  source "$HOME/.config/fish/local.fish"
end
