#!/usr/bin/env bash
# Display regular files in a directory and check read/write/execute access.
set -u

read -r -p "Enter directory name: " dir
if [[ ! -d "$dir" ]]; then
    echo "Error: '$dir' is not a directory."
    exit 1
fi

found=0
while IFS= read -r -d '' file; do
    found=1
    name=${file##*/}
    if [[ -r "$file" && -w "$file" && -x "$file" ]]; then
        printf '%s: has read, write and execute permissions\n' "$name"
    else
        printf '%s: does not have all read, write and execute permissions\n' "$name"
    fi
done < <(find "$dir" -maxdepth 1 -type f -print0)

if (( found == 0 )); then
    echo "No regular files found in '$dir'."
fi
