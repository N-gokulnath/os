#!/usr/bin/env bash
# Demonstrate sed line numbering and swapping the first two words.
set -u

read -r -p "Enter input file name [exm.txt]: " file
file=${file:-exm.txt}
if [[ ! -f "$file" || ! -r "$file" ]]; then
    echo "Error: file '$file' does not exist or is not readable."
    exit 1
fi

echo
echo "Line numbers of lines containing the letter O (case-sensitive):"
sed -n '/O/=' "$file"

echo
echo "Content with the first two words swapped on each line:"
sed -E 's/^([^[:space:]]+)[[:space:]]+([^[:space:]]+)/\2 \1/' "$file"
