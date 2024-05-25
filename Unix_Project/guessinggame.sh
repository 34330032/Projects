#!/bin/bash

# Check if a file path is provided as an argument
if [ $# -eq 0 ]; then
  echo "Error: Please provide a file path as an argument."
  exit 1
fi

# Define the source file path
source_file="$1"

# Define the destination folder (replace with your actual folder path)
destination_folder="/path/to/destination/folder"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
  echo "Error: File '$source_file' does not exist."
  exit 1
fi

# Copy the file with progress indicator
cp -p "$source_file" "$destination_folder" && echo "File copied successfully!" || echo "Error copying file."
