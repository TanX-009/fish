function c
  # Assign arguments to variables for better readability
  set target_directory (if test (count $argv) -ge 1; echo $argv[1]; else; echo "/SSD/C"; end)
  set command_to_run (if test (count $argv) -ge 2; echo $argv[2]; else; echo "nvim"; end)

  # Change to the target directory
  cd $target_directory

  # List subdirectories and store them in an array
  set subdirs (find . -maxdepth 1 -type d | sort | string replace -r '^./' '')

  # Check if there are any subdirectories
  if test ( count $subdirs ) -le 1
      echo "No subdirectories found in $target_directory"
      return 1
  end

  # Prompt user to select a subdirectory
  echo "Select a subdirectory to change into:"
  for i in (seq 1 (count $subdirs))
      echo "$i) $subdirs[$i]"
  end

  # Read user input
  read -f selection

  # Validate user input
  if test "$selection" -le 0 -o "$selection" -gt (count $subdirs)
      echo "Invalid selection"
      return 1
  end

  # Change to the selected subdirectory
  set selected_subdir $subdirs[$selection]
  cd $selected_subdir

  # Run the specified command
  eval $command_to_run
end
