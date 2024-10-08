#!/bin/bash

# File containing the list of usernames
USERFILE="users.txt"

# Check if the user file exists
if [[ ! -f "$USERFILE" ]]; then
    echo "User file not found: $USERFILE"
    exit 1
fi

# Loop through each line in the file
while read user; do
    # Check if the user exists on the system
    if id "$user" &>/dev/null; then
        # Grant sudo permissions
        echo "$user ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$user
        echo "Granted sudo permissions to $user"
    else
        echo "User not found: $user"
    fi
done < "$USERFILE"
