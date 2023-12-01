function fish_right_prompt
    # Display command duration
    if set -q cmd_duration
        echo -n -s "took " $cmd_duration "s "
    end

    # Display the current time
    set -l time (date "+%H:%M:%S")
    echo -n -s "🕙 " $time " "
end
