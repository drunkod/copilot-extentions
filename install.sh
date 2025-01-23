#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status

COMPATIBLE_VERSION="1.248.1249"
COMPATIBLE_CHAT_VERSION="0.15.1"

echo "Starting Copilot Extension Installation..."

# Go to Downloads directory
# cd ~/Downloads || { echo "Failed to navigate to ~/Downloads directory."; exit 1; }

# --- Install Copilot Extension ---
echo "Downloading Copilot Extension version: $COMPATIBLE_VERSION"
curl -o copilot-extension.gz "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/GitHub/vsextensions/copilot/$COMPATIBLE_VERSION/vspackage"
gunzip copilot-extension.gz
mv copilot-extension copilot-extension.vsix
echo "Installing Copilot Extension..."
code --install-extension copilot-extension.vsix
echo "Copilot Extension Installed."

# --- Install Copilot Chat Extension ---
echo "Downloading Copilot Chat Extension version: $COMPATIBLE_CHAT_VERSION"
curl -o copilot-chat-extension.gz "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/GitHub/vsextensions/copilot-chat/$COMPATIBLE_CHAT_VERSION/vspackage"
gunzip copilot-chat-extension.gz
mv copilot-chat-extension copilot-chat-extension.vsix
echo "Installing Copilot Chat Extension..."
code --install-extension copilot-chat-extension.vsix
echo "Copilot Chat Extension Installed."

echo "Copilot and Copilot Chat Extensions installation completed successfully."
exit 0
