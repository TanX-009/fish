function countlines
    if test (count $argv) -lt 2
        echo "Usage: count_lines <directory> <extension>"
        return 1
    end

    set directory $argv[1]
    set extension $argv[2]

    set total_lines 0

    # Recursively find files with the given extension and count lines
    for file in (find $directory -type f -name "*.$extension")
        set lines (wc -l < $file)
        set total_lines (math $total_lines + $lines)
    end

    echo "Total lines in *.$extension files: $total_lines"
end
