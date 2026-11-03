#!/usr/bin/env bash
# Search for a user-specified word or pattern in a file.
set -u

read -r -p "Enter file name [dummy.txt]: " file
file=${file:-dummy.txt}
if [[ ! -f "$file" || ! -r "$file" ]]; then
    echo "Error: file '$file' does not exist or is not readable."
    exit 1
fi

read -r -p "Enter word/pattern to search: " pattern
if [[ -z "$pattern" ]]; then
    echo "Error: search pattern cannot be empty."
    exit 1
fi

echo "Matching lines:"
if ! grep -n -i -- "$pattern" "$file"; then
    echo "No matches found."
fi
