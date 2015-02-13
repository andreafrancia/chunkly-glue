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

RPROMPT='$(chunkly_prompt)'
