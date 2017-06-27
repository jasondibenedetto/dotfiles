# editor
set -x EDITOR atom

# aliases
source "$HOME/.config/fish/aliases.fish"

# paths
source "$HOME/.config/fish/paths.fish"

# local
set -l local "$HOME/.config/fish/local.fish"

if test -f $local
  source $local
end
