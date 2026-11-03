#!/usr/bin/env bash
# Menu-driven fruit selection program from the practical record.
set -u

while true; do
    echo
    echo "SELECT YOUR FAVOURITE FRUIT"
    echo "1. Apple"
    echo "2. Grapes"
    echo "3. Mango"
    echo "4. Exit from menu"
    read -r -p "Enter your menu choice [1-4]: " choice

    case "$choice" in
        1) echo "You have selected option 1"; echo "Selected fruit is Apple." ;;
        2) echo "You have selected option 2"; echo "Selected fruit is Grapes." ;;
        3) echo "You have selected option 3"; echo "Selected fruit is Mango." ;;
        4) echo "Quitting..."; break ;;
        *) echo "Invalid option. Please choose 1-4." ;;
    esac
done
