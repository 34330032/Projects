# Define the URL of the file
file_url="https://example.com/file.txt"

# Define the destination folder
destination_folder="/path/to/destination/folder"

# Download the file with timestamp in filename
wget -qO "$destination_folder/$(basename $file_url)_$(date +%Y-%m-%d-%H-%M-%S)" "$file_url"

# Check the local file modification time for comparison next time
last_modified=$(stat -c %y "$destination_folder/$(basename $file_url)")