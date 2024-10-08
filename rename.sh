#!/bin/bash

# Prompt for original and new file names
echo "Enter the original file name:"
read original_file

echo "Enter the new file name:"
read new_file

# Check if the original file exists
if [[ -e "$original_file" ]]; then
    # Rename the file
    mv "$original_file" "$new_file"
    echo "File renamed from '$original_file' to '$new_file'"
else
    echo "Error: '$original_file' does not exist."
fi
