#!/bin/bash
password_file="/etc/passwd"
users_with_bash=$(awk -F: '/\/bin\/bash/{print $1}' "$password_file")
echo "Users with /bin/bash as their shell:"
echo "$users_with_bash"
chmod +x my.sh
./my.sh
