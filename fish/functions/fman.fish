function fman
    nvim -c "Man $argv" -c "set ft=man" -c "only"
end

