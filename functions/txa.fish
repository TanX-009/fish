function txa
    if test (count $argv) -eq 0
        echo "Usage: txa <tmux_session_name>"
        return 1
    end

    set session_name $argv[1]
    tmux attach-session -t $session_name
end
