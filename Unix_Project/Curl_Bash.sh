# Similar to wget, replace wget with curl

curl -sSL "$file_url" > "$destination_folder/$(basename $file_url)_$(date +%Y-%m-%d-%H-%M-%S)"

last_modified=$(stat -c %y "$destination_folder/$(basename $file_url)")
