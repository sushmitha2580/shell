#!/bin/bash

# Read the number of rows (n) from the user
read -p "Enter the number of rows: " n

# Initialize a variable to track the current number
current_num=1

# Outer loop for rows from 1 to n
for (( i=1; i<=n; i++ )); do
    # Inner loop to print the required number of numbers in each row
    for (( j=1; j<=i; j++ )); do
        echo -n "$current_num "  # Print the current number followed by a space
        ((current_num++))  # Increment the number
    done
    echo  # Move to the next line after each row
done
