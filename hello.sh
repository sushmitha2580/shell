#!/bin/bash

# Step 1: Read input string from user
echo "Enter a string:"
read input

# Step 2: Initialize variables
length=$(echo -n "$input" | wc -c)                 # Get the length of the string
reversed=""         # Empty string to store the reversed result

# Step 3: Loop to reverse the string
for (( i=$length; i>0; i-- ))
do
    # Cut the i-th character from the input string
    char=$(echo "$input" | cut -c$i)
    
    # Append the extracted character to the reversed string
    reversed="$reversed$char"
done

# Step 4: Display the reversed string
echo "Reversed string: $reversed"
