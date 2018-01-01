# brew
set -g fish_user_paths $fish_user_paths '/usr/local/sbin'

# yarn
if test -d (yarn global dir)
  set -g fish_user_paths $fish_user_paths "(yarn global dir)/node_modules/.bin"
end


