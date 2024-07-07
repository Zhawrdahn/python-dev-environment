#!/bin/bash

# Ensure the SSH directory exists and has the correct permissions
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Debugging prints
echo "Copying SSH keys..."
ls -l /workspace/ssh

# Copy SSH keys from the mounted volume to the user's SSH directory
cp /workspace/ssh/id_rsa ~/.ssh/id_rsa || { echo "Error: id_rsa not found"; exit 1; }
cp /workspace/ssh/id_rsa.pub ~/.ssh/id_rsa.pub || { echo "Error: id_rsa.pub not found"; exit 1; }

# Set the correct permissions for the SSH keys
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

# Add GitHub to known hosts
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

echo "SSH setup completed."
