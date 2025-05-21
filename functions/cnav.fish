function cnav
    set dir ~/
    if test (count $argv) -gt 0
        set dir $argv[1]  # Use provided directory
    end

    set selection (ls -D $dir | fzf \
        --bind "tab:up" \
        --bind "shift-tab:down")

    if test -n "$selection"
        cd "$dir/$selection"
        echo "Selected: $dir/$selection"
        echo "(n)vim, (l)azygit, (o)pen nested dir or (Enter) to stay."
        read -n 1 -p "" key

        switch $key
            case n
                nvim
            case l
                lazygit
            case o
                cnav ./
        end
    end
end
