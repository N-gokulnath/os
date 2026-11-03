#!/usr/bin/env bash
# Reverse a string and check whether it is a palindrome.
set -u

read -r -p "Enter a string: " input
reverse=""
for ((i = ${#input} - 1; i >= 0; i--)); do
    reverse+="${input:i:1}"
done

echo "Reverse: $reverse"
if [[ "$input" == "$reverse" ]]; then
    echo "$input is a palindrome."
else
    echo "$input is not a palindrome."
fi
