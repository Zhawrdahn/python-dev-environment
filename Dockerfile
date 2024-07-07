# Use official Ubuntu base image (22.04 recommended for current LTS)
FROM ubuntu:22.04

# Install Python, Git, OpenSSH, and other necessary tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    curl \
    git \
    zsh \
    openssh-client \
    vim \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set working directory
WORKDIR /workspace

# Copy setup-ssh.sh script
COPY setup-ssh.sh /workspace/setup-ssh.sh

# List contents of /workspace for debugging
RUN ls -l /workspace

# Set shell
SHELL ["/usr/bin/zsh", "-c"]

# Default command
CMD ["/bin/bash", "-c", "/workspace/setup-ssh.sh && tail -f /dev/null"]
