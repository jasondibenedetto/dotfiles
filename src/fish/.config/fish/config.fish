# editor
set -x EDITOR code

# theme
set pure_symbol_prompt '→'

# direnv
eval (direnv hook fish)

# fzf
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden'

# brew
set PATH '/usr/local/sbin' $PATH

# yarn
set PATH "(yarn global bin)/node_modules/.bin" $PATH

# android
set -x ANDROID_HOME '~/Library/Android/sdk/'
set PATH '~/android-sdks/platform-tools/' $PATH
set PATH '~/android-sdks/tools/' $PATH
