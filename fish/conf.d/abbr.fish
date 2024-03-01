# cSpell:disable
# NOTE: manage fish abbreviations
# https://fishshell.com/docs/current/cmds/abbr.html

#abbr ast "aw set -t (aw list | fzf-tmux -p --reverse --preview 'aw set -t {}')"

abbr a "asdf"
abbr ar "asdf reshim"
abbr als "asdf list"
abbr ai "asdf install"
abbr apu "asdf plugin update --all"
abbr apl "asdf plugin list"
abbr apa "asdf plugin add"
abbr apr "asdf plugin remove"
abbr ag "asdf global"

abbr bi "brew install"
abbr bic "brew install --cask"
abbr bin "brew info"
abbr binc "brew info --cask"
abbr bl "brew leaves"
abbr blr "brew leaves --installed-on-request"
abbr blp "brew leaves --installed-as-dependency"
abbr bs "brew search"
abbr bu "brew uninstall"

abbr c clear
abbr cl clear
abbr claer clear
abbr clera clear
abbr cx "chmod +x"

abbr dc "docker compose"
abbr dcd "docker compose down"
abbr dcdv "docker compose down -v"
abbr dcr "docker compose restart"
abbr dcu "docker compose up -d --build"
abbr dps "docker ps --format 'table {{.Names}}\t{{.Status}}'"
abbr dsr "docker stack rm"
abbr dsp "docker system prune"

abbr e exit

abbr fi "fisher install"
abbr fr "fisher refresh"
abbr fu "fisher update"
abbr fl "fisher list | sed 's/.*/"&"/'"

abbr g "git status"
abbr ga "git add ."
abbr gb "git branch -v"
abbr gc "git commit"
abbr gca "git commit -av"
abbr gcl "git clone"
abbr gco "git checkout -b"
abbr gcom "~/bin/git-to-master-cleanup-branch.sh"
abbr gd "nvim +DiffviewOpen"
abbr gf "git fetch --all"
abbr gl "git pull"
abbr gma "git merge --abort"
abbr gmc "git merge --continue"
abbr gp "git push"
abbr gpom "git pull origin main"
abbr gpr "gh pr create"
abbr gpum "git pull upstream master"
abbr gr "git remote"
abbr gra "git remote add"
abbr grao "git remote add origin"
abbr grau "git remote add upstream"
abbr grv "git remote -v"
abbr gs "git status"
abbr gst "git status"

abbr hd "history delete --exact --case-sensitive \'(history | fzf-tmux -p -m)\'"

abbr l "lsd  --group-dirs first -A"
abbr ld lazydocker
abbr lg lazygit
abbr ll "lsd  --group-dirs first -Al"
abbr lt "lsd  --group-dirs last -A --tree"

abbr mt "man tmux"
abbr mf "man fzf"
abbr mz "man zoxide"
abbr mci "mvn clean install"

abbr nb "npm run build"
abbr nd "npm run dev"
#abbr nf neofetch
#abbr ni "npm install"
abbr nt "npm run test"

abbr o "open ."
abbr pwdc "pwd | pbcopy"
abbr py "python3"

abbr rmr "rm -rf"

abbr sf "source ~/.config/fish/config.fish"
abbr st "tmux source ~/.config/tmux/tmux.conf"

#abbr th things-cli
abbr ta "tmux a"
abbr tat "tmux attach -t"
abbr td "t .config"
abbr tk "tmux kill-server"
abbr tkt "tmux kill-session -t"
abbr tr "tldr --list | fzf --header 'tldr (tealdeer)' --reverse --preview 'tldr {1} --color=always' --preview-window=right,80% | xargs tldr"
abbr tls "tmux list-sessions"
abbr tlw "tmux list-windows"
abbr tn "tmux new -s (basename (pwd))"
#abbr tt "touch t && chmod +x t && echo -e '#!/usr/bin/env bash\n' > t && nvim t"

abbr v "nvim"
abbr vnim "nvim"
abbr vd "nvim ."
abbr vfzf "nvim (fd --type f --hidden --follow --exclude .git | fzf-tmux -p -w 100 --reverse --preview 'bat --color=always --style=numbers --line-range=:500 {}')"
abbr alac "nvim ~/.config/alacritty/"
abbr fishc "nvim ~/.config/fish/"
abbr tmuxc "nvim ~/.config/tmux/"
abbr nvimc "nvim ~/.config/nvim/"
abbr vimc "nvim ~/.config/nvim/"
abbr yabaic "nvim ~/.config/yabai/"
abbr conf "nvim ~/.config/"

#abbr x "chmod +x (ls | gum filter --limit 1 --header 'chmod +x')"

abbr za "zoxide add"
abbr ze "zoxide edit"

abbr :GoToCommand fzf-history-widget
abbr :GoToFile "nvim +GoToFile"
abbr :SmartGoTo "nvim +SmartGoTo"
abbr :Grep "nvim +Grep"
abbr :bd exit
abbr :q "tmux kill-server"
abbr :qa! "tmux kill-server"
