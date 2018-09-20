# brew
set -g fish_user_paths $fish_user_paths '/usr/local/sbin'

# yarn
set -g fish_user_paths $fish_user_paths "(yarn global bin)/node_modules/.bin"

# android studio
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -g fish_user_paths $fish_user_paths $ANDROID_HOME/tools
set -g fish_user_paths $fish_user_paths $ANDROID_HOME/platform-tools
