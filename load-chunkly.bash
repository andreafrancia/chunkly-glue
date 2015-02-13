dir="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
function date()
{
    gdate "$@"
}

function mongo()
{
    echo "$@"
}

mkdir -p ~/.chunkly
touch ~/.chunkly/"$(date +%Y-%m-%d).log"

source awesome-terminal-fonts/patched/SourceCodePro+Powerline+Awesome+Regular.sh
source "$dir/dotfiles/zsh/plugins/time/time.plugin.zsh"
source "$dir/dotfiles/zsh/plugins/chunkly/chunkly.plugin.zsh"

CC_WHITE='255'
CC_DRAW_IN_WHITE="%k%f%F{$CC_WHITE}"

cur_dir=$'%{\e[0;90m%}$(tilde_or_pwd)%{\e[0m%}'
no_color=$'%{\e[0m%}'
RPROMPT="$cur_dir $(git_cwd_info) $CC_WRITE_IN_WHITE"'$(chunkly_prompt)'"$no_color"
