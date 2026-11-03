
set -u

echo "String Reverse"
read -r -p "Enter string: " string
reverse=""
len=${#string}

for ((i = len - 1; i >= 0; i--)); do
    reverse+="${string:i:1}"
done

echo "Reverse:"
echo "$reverse"
