# OS and UNIX – Shell Programming Practicals

This folder contains 10 corrected Bash practical programs. The first nine topics are based on the uploaded Operating System and UNIX practical record; the tenth is the String Reverse program shown in the uploaded terminal screenshot.

## Requirements
- Linux, macOS, WSL, or another environment with Bash.
- The scripts are executable. If file permissions are not preserved after copying, run `chmod +x *.sh`.

## Run a program
From this folder, run for example:

```bash
./01_list_files_permissions.sh
./02_count_lines_words_characters.sh
./03_grep_search_word.sh
./04_sed_commands.sh
./05_awk_count_lines_words_characters.sh
./06_prime_number.sh
./07_factorial.sh
./08_palindrome.sh
./09_menu_search_element.sh
./10_string_reverse.sh
```

You can also run any script with `bash script_name.sh`.

## Included sample files
- `demo_file.txt` – used by the line/word/character counting practical.
- `dummy.txt` – sample text for grep.
- `exm.txt` – sample text for sed.

The scripts prompt for filenames where appropriate. Press Enter to use the sample filename shown in the prompt.

## Notes
- Practical 2 and Practical 5 cover similar counting tasks in the source record; they are kept as separate programs to preserve the record's 10-program collection when combined with the screenshot's String Reverse program.
- The factorial program accepts 0–20 to avoid Bash's signed 64-bit integer overflow.
- The prime-number program expects a non-negative whole number.
- The palindrome and string-reverse programs are intended for ordinary ASCII/byte-oriented classroom examples.

## Clone-ready layout
This is a normal Git repository folder layout. To publish it, create a new repository on GitHub/GitLab, then run:

```bash
git init
git add .
git commit -m "Add corrected OS and UNIX shell practicals"
git branch -M main
git remote add origin YOUR_REPOSITORY_URL
git push -u origin main
```
