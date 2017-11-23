# editor
set -x EDITOR nvim

# aliases
source "$HOME/.config/fish/aliases.fish"

# paths
source "$HOME/.config/fish/paths.fish"

# theme
set pure_symbol_prompt '→'

# direnv
eval (direnv hook fish)
