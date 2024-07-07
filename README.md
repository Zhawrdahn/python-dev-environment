# Python Development Environment

This repository provides a Docker-based development environment for Python projects, with support for SSH key configuration.

## Prerequisites

- Docker
- Docker Compose
- `task` CLI tool
- SSH keys (`id_rsa` and `id_rsa.pub`) located in `~/.ssh`

## Installation of `task` CLI Tool

### macOS

Install using Homebrew:

```sh
brew install go-task/tap/go-task
```


### Linux
```sh
git clone https://github.com/Zhawrdahn/python-dev-environment.git
cd python-dev-environment
```

Install using the installation script:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/go-task/task/master/install-task.sh)"
```

### Windows

Install using Scoop:

```sh
scoop install go-task
```

## Setup

### 1. Clone the Repository

Clone this repository to your local machine:

```sh
git clone https://github.com/yourusername/python-dev-environment.git
cd python-dev-environment
```

### 2. Ensure Your SSH Keys are Available

Ensure your SSH keys (`id_rsa` and `id_rsa.pub`) are in the `~/.ssh` directory on your host machine. These keys will be used within the container to manage operations requiring SSH.

## Using the Taskfile

The `Taskfile.yml` provides various tasks for managing the Docker environment. Below are the available tasks:

### Build the Docker Image

Build the Docker image:

```sh
task build
```

### Run the Docker Container

To run the Docker container:

```sh
task run
```

### Stop the Docker Container

To stop the Docker container:

```sh
task stop
```

### Execute a Shell in the Running Container

To execute a shell in the running container:

```sh
task exec
```

### Show Logs of the Running Container

To show logs of the running container:

```sh
task logs
```

### Rebuild, Run, and Execute a Shell in the Docker Container

To rebuild the Docker image, run the container, and execute a shell inside it:

```sh
task rebuild
```

### Run `setup-ssh.sh` Script in the Running Container

To run the `setup-ssh.sh` script in the running container:

```sh
task setup-ssh
```

### Clean Up Docker Environment

To clean up the Docker environment (remove stopped containers, unused images, etc.):

```sh
task clean
```

## Troubleshooting

If you encounter any issues with SSH keys or permissions, ensure that:

- Your SSH keys (`id_rsa` and `id_rsa.pub`) are present in the `~/.ssh` directory.
- The permissions of the keys are correct:

```sh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
```

For further assistance, check the logs of the running container:

```sh
task logs
```

## Conclusion

This setup provides a consistent and isolated Python development environment using Docker, with convenient task automation using `Taskfile.yml`. It simplifies the process of building, running, and managing your development environment, making it easy to get started and maintain your projects.

Feel free to contribute to this repository by submitting issues.

Happy coding!
