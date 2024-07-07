#!/bin/bash

# Ensure the SSH directory exists and has the correct permissions
mkdir -p /root/.ssh
chmod 700 /root/.ssh

# Copy SSH keys from the host to the container
cp /workspace/ssh/id_rsa /root/.ssh/id_rsa
cp /workspace/ssh/id_rsa.pub /root/.ssh/id_rsa.pub

# Set the correct permissions for the SSH keys
chmod 600 /root/.ssh/id_rsa
chmod 644 /root/.ssh/id_rsa.pub

# Add GitHub to known hosts
ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts
