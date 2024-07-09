# Use a lighter, Python-specific base image
FROM python:3.11-slim-buster

# Set working directory
WORKDIR /workspace

# Install essential tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    openssh-client \
    zsh \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Optionally install Code Server if required
ARG INSTALL_CODE_SERVER=false
RUN if [ "$INSTALL_CODE_SERVER" = "true" ]; then \
    curl -fsSL https://code-server.dev/install.sh | sh; \
    fi

# Copy necessary scripts and files
COPY setup-ssh.sh /workspace/setup-ssh.sh

# Set permissions and run the setup script
RUN chmod +x /workspace/setup-ssh.sh && ./setup-ssh.sh

# Use the Zsh shell if installed
SHELL ["/bin/zsh", "-c"]

# Define default command
CMD if [ "$CODE_SERVER_ENABLED" = "true" ]; then \
        code-server --bind-addr 0.0.0.0:8080 --auth none; \
    else \
        tail -f /dev/null; \
    fi

# Add a health check (if using a service like Code Server)
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1
