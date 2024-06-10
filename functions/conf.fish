function conf
  switch $argv[1]
    case dots
      cd ~/.dots
    case colors
      cd ~/.colors
    case scripts
      cd ~/.scripts
    case '*'
      cd ~/.config/$argv
  end
  nvim
end
