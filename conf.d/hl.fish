function hl --description "Run hledger with the current year's journal"
    set -l journal "$HOME/.hledger/$(date +%Y).journal"

    if not test -f "$journal"
        mkdir -p (dirname "$journal")
        touch "$journal"
    end

    hledger -f "$journal" $argv
end
