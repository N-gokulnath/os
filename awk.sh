#!/usr/bin/env bash
# Count lines, words and characters using awk.
set -u

read -r -p "Enter input file name [demo_file.txt]: " file
file=${file:-demo_file.txt}
if [[ ! -f "$file" || ! -r "$file" ]]; then
    echo "Error: file '$file' does not exist or is not readable."
    exit 1
fi

awk '
{
    lines++
    words += NF
    chars += length($0) + 1
}
END {
    # Do not count a newline after the final line if the file has none.
    if (NR > 0) {
        cmd = "tail -c 1 \"" FILENAME "\""
        cmd | getline last_char
        close(cmd)
        if (last_char != "") chars--
    }
    printf "Number of lines: %d\n", lines
    printf "Number of words: %d\n", words
    printf "Number of characters: %d\n", chars
}
' "$file"
