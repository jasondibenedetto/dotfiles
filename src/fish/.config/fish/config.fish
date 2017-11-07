# editor
set -x EDITOR atom-beta
set -x VISUAL atom-beta

# aliases
source "$HOME/.config/fish/aliases.fish"

# paths
source "$HOME/.config/fish/paths.fish"

# local
set -l local "$HOME/.config/fish/local.fish"

if test -f $local
  source $local
end

# theme
set pure_symbol_prompt '→'
