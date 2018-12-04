# editor
set -x EDITOR nvim

# paths
source "$HOME/.config/fish/paths.fish"

# theme
set pure_symbol_prompt '→'

# open default editor
alias e $EDITOR

# direnv
eval (direnv hook fish)

# fzf
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden'

# nix
if test -e '/Users/jasondibenedetto/.nix-profile/etc/profile.d/nix.sh'
  fenv source '/Users/jasondibenedetto/.nix-profile/etc/profile.d/nix.sh'
end

alias nix-fish 'nix-shell --command fish'
