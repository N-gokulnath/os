#!/usr/bin/env bash
# Calculate factorial using a for loop.
set -u

read -r -p "Enter a non-negative integer (0-20): " num
if [[ ! "$num" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi
num=$((10#$num))
if (( num > 20 )); then
    echo "Please enter a number from 0 to 20 (to avoid 64-bit integer overflow)."
    exit 1
fi

fact=1
for ((i = 2; i <= num; i++)); do
    fact=$((fact * i))
done
echo "Factorial of $num = $fact"
