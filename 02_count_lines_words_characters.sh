#!/usr/bin/env bash
# Count lines, words and bytes/characters in a text file.
set -u

file=${1:-}
if [[ -z "$file" ]]; then
    read -r -p "Enter input file name: " file
fi
if [[ ! -f "$file" || ! -r "$file" ]]; then
    echo "Error: file '$file' does not exist or is not readable."
    exit 1
fi

echo "File: $file"
printf "Number of lines: "
wc -l < "$file"
printf "Number of words: "
wc -w < "$file"
printf "Number of characters: "
wc -m < "$file"
