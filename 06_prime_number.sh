#!/usr/bin/env bash
# Check whether an integer is prime.
set -u

read -r -p "Enter a number: " number
if [[ ! "$number" =~ ^[0-9]+$ ]]; then
    echo "Please enter a non-negative integer."
    exit 1
fi
number=$((10#$number))

if (( number < 2 )); then
    echo "$number is not a prime number."
    exit 0
fi

is_prime=1
for ((i = 2; i * i <= number; i++)); do
    if (( number % i == 0 )); then
        is_prime=0
        break
    fi
done

if (( is_prime )); then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi
