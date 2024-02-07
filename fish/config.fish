# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com/
eval (/opt/homebrew/bin/brew shellenv)
starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'


set -U fish_greeting "" # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings
# set -U LANG en_US.UTF-8
# set -U LC_ALL en_US.UTF-8


set -Ux BAT_THEME Catppuccin-mocha # 'sharkdp/bat' cat clone
set -Ux EDITOR nvim
set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux VISUAL nvim

set -Ux DOCKER_CONTENT_TRUST 1
set -Ux GOPATH (go env GOPATH)
set -Ux JAVA_HOME (/usr/libexec/java_home -v 17)
set -Ux DOTNET_ROOT  /Users/maestro-bene/dotnet/
set -Ux MISTRAL_API_KEY  j6SWQ3bSgr1fUFoYcln2r7PincJWPsxc
set -Ux ASDF_FORCE_PREPEND "yes"
set -Ux HOMEBREW_NO_ENV_HINTS 1

fish_add_path $GOPATH/bin
fish_add_path $HOME/.local/share/nvim/mason/bin/
fish_add_path $HOME/dotnet 
fish_add_path $HOME/.config/bin # my custom scripts

set -gx PATH (string join : (string split : $PATH | uniq))


# https://egeek.me/2020/04/18/enabling-locate-on-osx/
if type -q glocate
    alias locate="glocate -d $HOME/locatedb"
    
    # Using cache_list requires `LOCATE_PATH` environment var to exist in session.
    # trouble shoot: `echo $LOCATE_PATH` needs to return db path.
    if test -f "$HOME/locatedb"
        set -gx LOCATE_PATH "$HOME/locatedb"
    end
end

alias loaddb="gupdatedb --localpaths=$HOME --prunepaths=/Volumes --output=$HOME/locatedb"

if status is-interactive
    # Run script only if the shell is interactive
    ~/.config/fish/tmux-clean.fish
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish
