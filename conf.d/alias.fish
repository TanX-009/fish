# grep colors
alias grep='grep --color=auto'

# ls colors
alias ls="eza"

# yeet
alias yeet="yay -Rns"
alias yeti="yay -Rnsc"

# lazy commands
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# lazy apps
alias n='nvim'
alias lg='lazygit'
alias lzd='lazydocker'
alias nrd='npm run dev'
alias brd='bun --bun run dev'
alias r='ranger'

alias cP='rsync --progress'
alias loglink='curl -F 'file=@-' 0x0.st'

# remove with confirmation
alias rm="rm -i"

# mount with user permissions
alias mnt="sudo mount -o uid=$(id -u),gid=$(id -g)"
