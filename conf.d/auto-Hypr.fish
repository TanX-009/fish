# Auto start Hyprland on tty1
if test -z "$DISPLAY" ;and test "$XDG_VTNR" -eq 1
    mkdir -p ~/.cache
    exec ~/.local/bin/wrappedhl > ~/.cache/hyprland.log ^&1
end
