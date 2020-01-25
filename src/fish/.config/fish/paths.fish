# brew
set PATH /usr/local/sbin $PATH

# yarn
set PATH (yarn global bin)/node_modules/.bin $PATH

# android studio
set -x ANDROID_HOME $HOME/Library/Android/sdk
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $ANDROID_HOME/emulator $PATH
set PATH $ANDROID_HOME/tools/bin $PATH

set PATH /usr/local/opt/mongodb@3.4/bin $PATH

set -g fish_user_paths "/usr/local/opt/php@7.2/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/php@7.2/sbin" $fish_user_paths
