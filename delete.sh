#!/bin/bash

# No check for input directory
directory="$1"

# Check if the provided directory exists
if [[ ! -d "$directory" ]]; then
    echo "Error: '$directory' is not a valid directory."
    exit 1
fi

# Find and delete files older than 4 weeks
echo "Finding and deleting files in '$directory' older than 4 weeks..."
find "$directory" -type f -mtime +28 -exec du -b {} + | sort -n -r | awk '{print $2}' | while read -r file; do
    echo "Deleting: $file"
    rm -f "$file"
done

echo "Deletion complete."
