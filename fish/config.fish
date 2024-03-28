# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com/
# eval (/opt/homebrew/bin/brew shellenv)
starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'

# https://egeek.me/2020/04/18/enabling-locate-on-osx/
if type -q glocate
    alias locate="glocate -d $HOME/locatedb"
    
    # Using cache_list requires `LOCATE_PATH` environment var to exist in session.
    # trouble shoot: `echo $LOCATE_PATH` needs to return db path.
    if test -f "$HOME/locatedb"
        set -gx LOCATE_PATH "$HOME/locatedb"
    end
end

set ASDF_ALWAYS_KEEP_DOWNLOAD false

set -U fish_greeting "" # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings
set -U LANG en_US.UTF-8
set -U LC_ALL en_US.UTF-8


set -Ux BAT_THEME Catppuccin-mocha # 'sharkdp/bat' cat clone
set -Ux EDITOR nvim
set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux VISUAL nvim

set -Ux DOCKER_CONTENT_TRUST 1
set -Ux GOPATH (go env GOPATH)
set -Ux JAVA_HOME (/usr/libexec/java_home -v 17)
set -Ux DOTNET_ROOT  $HOME/dotnet/
set -Ux HOMEBREW_NO_ENV_HINTS 1


# Define the variable GITLAB_HOST_CHOICE with values either 'resel' or 'official'
set GITLAB_HOST_CHOICE resel # Change to 'official' as needed

switch $GITLAB_HOST_CHOICE
  case resel
    set -Ux GITLAB_TOKEN (sh -c '$HOME/.config/get-gitresel-pat.sh')
    set -Ux GITLAB_VIM_URL https://git.resel.fr/
    set -Ux GITLAB_URL https://git.resel.fr/
    set -Ux GITLAB_HOST https://git.resel.fr/

  case official
    set -Ux GITLAB_TOKEN (sh -c '$HOME/.config/get-gitlab-pat.sh')
    set -Ux GITLAB_VIM_URL https://gitlab.com/
    set -Ux GITLAB_URL https://gitlab.com/
    set -Ux GITLAB_HOST https://gitlab.com/

  case '*'
    echo "Unknown GitLab host choice: $GITLAB_HOST_CHOICE. Please set it to either 'resel' or 'official'."
end

if test -n "$NVIM_LISTEN_ADDRESS"
  set -x MANPAGER "/usr/local/bin/nvr -c 'Man!' -o -"
end

fish_add_path -mp /opt/homebrew/bin
fish_add_path -mp /opt/homebrew/sbin
fish_add_path $GOPATH/bin
fish_add_path $HOME/.local/share/nvim/mason/bin/
fish_add_path $HOME/dotnet 
fish_add_path $HOME/.config/bin # my custom scripts
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path /usr/local/share/dotnet
fish_add_path $HOME/.dotnet/tools
fish_add_path $HOME/.cargo/bin
# Putting ASDF binaries before homebrew ones in the path, by removing them from the path if they exist, and then sourcing asdf config for fish, which prepends them
source /opt/homebrew/opt/asdf/libexec/asdf.fish
fish_add_path -mp /opt/homebrew/opt/asdf/libexec/bin
fish_add_path -mp /Users/maestro-bene/.asdf/shims

if status is-interactive
    # Run script only if the shell is interactive
    ~/.config/fish/tmux-clean.fish
end
