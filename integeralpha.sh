#!/bin/bash

# Check if any arguments were provided
if [[ $# -eq 0 ]]; then
    echo "No arguments provided. Please provide some inputs."
    exit 1
fi

# Initialize a variable to store the integer arguments
integers=()

# Loop through each argument provided by the user
for arg in "$@"; do
    # Check if the argument is an integer (using a regular expression)
    if [[ "$arg" =~ ^-?[0-9]+$ ]]; then
        # If it is an integer, store it in the array
        integers+=("$arg")
    fi
done

# Check if we found any integers
if [[ ${#integers[@]} -eq 0 ]]; then
    echo "No integer arguments found."
else
    # Print the integer arguments
    echo "The integer arguments are:"
    for i in "${integers[@]}"; do
        echo "$i"
    done
fi
