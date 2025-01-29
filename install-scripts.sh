#!/bin/bash

# Define source and destination directories
SCRIPT_DIR="$(dirname "$(realpath "$0")")/scripts"
BIN_DIR="/usr/local/bin"

# Ensure the script is run with sudo
if [[ "$EUID" -ne 0 ]]; then
    echo "Error: Please run this script with sudo."
    exit 1
fi

# Check if the scripts directory exists
if [[ ! -d "$SCRIPT_DIR" ]]; then
    echo "Error: The 'scripts' directory was not found."
    echo "Make sure your scripts are stored in a 'scripts' folder in the repository."
    exit 1
fi

# Copy scripts and set executable permissions
echo "Installing scripts from $SCRIPT_DIR to $BIN_DIR..."
for script in "$SCRIPT_DIR"/*; do
    if [[ -f "$script" && -x "$script" ]]; then
        cp "$script" "$BIN_DIR/"
        chmod +x "$BIN_DIR/$(basename "$script")"
        echo "Installed: $(basename "$script")"
    fi
done

echo "All scripts have been installed successfully!"
exit 0

