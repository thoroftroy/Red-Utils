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
    echo "Make sure this script is located in the same repository as your installed scripts."
    exit 1
fi

# Uninstall scripts
echo "Uninstalling scripts from $BIN_DIR..."
for script in "$SCRIPT_DIR"/*; do
    if [[ -f "$script" ]]; then
        script_name="$(basename "$script")"
        if [[ -f "$BIN_DIR/$script_name" ]]; then
            rm "$BIN_DIR/$script_name"
            echo "Removed: $script_name"
        else
            echo "Skipping: $script_name (not found in $BIN_DIR)"
        fi
    fi
done

echo "Uninstallation complete!"
exit 0

