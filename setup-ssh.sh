#!/bin/bash
echo "Copying SSH keys..."

# Ensure the SSH directory exists
mkdir -p /root/.ssh

# Check if SSH keys are present and copy them
if [ -f "/workspace/ssh/id_rsa" ] && [ -f "/workspace/ssh/id_rsa.pub" ]; then
    cp /workspace/ssh/id_rsa /root/.ssh/id_rsa
    cp /workspace/ssh/id_rsa.pub /root/.ssh/id_rsa.pub
    chmod 600 /root/.ssh/id_rsa
    chmod 644 /root/.ssh/id_rsa.pub
    echo "SSH keys copied successfully."
else
    echo "Warning: SSH keys not found, continuing without copying."
fi

