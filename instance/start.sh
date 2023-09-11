#!/bin/sh

# Iterate over all files in /app
for file in /app/*; do
    # Check if the file exists in /workspace
    if [ ! -f "/workspace/$(basename "$file")" ]; then
        # Copy the file from /app to /workspace
        cp "$file" "/workspace/$(basename "$file")"
    fi
done

# Execute the main command, in this case, supervisord
exec /usr/bin/supervisord
