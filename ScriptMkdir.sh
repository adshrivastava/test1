#!/bin/bash

# Create a directory named "a"
mkdir -p a

# Check if the directory was created successfully
if [ $? -eq 0 ]; then
    echo "Directory 'a' created successfully."
else
    echo "Failed to create directory 'a'."
    exit 1  # Exit with non-zero status to indicate failure
fi
