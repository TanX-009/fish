#if test -f ~/.colors/generated/terminal/sequences.txt
#    cat ~/.colors/generated/terminal/sequences.txt
#end

set -gx FZF_DEFAULT_OPTS "
  --color=fg:7,bg:0,hl:1
  --color=fg+:15,bg+:8,hl+:9
  --color=info:12,prompt:3
  --color=pointer:5,marker:2,spinner:4"
