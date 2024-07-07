# Python Development Environment

This project provides a Docker-based Python development environment. It includes Python, Git, Zsh, OpenSSH, and other useful development tools. It is configured to use your SSH keys for Git operations.

## Project Structure

python-dev-environment/
├── Projects/
├── Dockerfile
├── docker-compose.yml
├── run-python-container.sh
├── setup-ssh.sh
├── README.md
├── .env.example

- `Projects/`: This is where you can put your Python projects.
- `Dockerfile`: Defines the Docker image.
- `docker-compose.yml`: Configures the Docker services.
- `run-python-container.sh`: A script to build, run, and exec into the Docker container.
- `setup-ssh.sh`: A script to set up SSH keys inside the container.
- `README.md`: This file.
- `.env.example`: Example environment variables file.

## Getting Started

1. **Clone the repository**:

    ```sh
    git clone https://github.com/yourusername/python-dev-environment.git
    cd python-dev-environment
    ```

2. **Copy your SSH keys to the `ssh/` directory**:

    ```sh
    mkdir ssh
    cp ~/.ssh/id_rsa ssh/
    cp ~/.ssh/id_rsa.pub ssh/
    ```

3. **Ensure you have Docker and Docker Compose installed**.

4. **Make sure your SSH keys are set up and located in `~/.ssh`**.

5. **Run the setup script**:

    ```sh
    ./run-python-container.sh
    ```

This script will build the Docker container, start it in detached mode, set up SSH keys, and then open an interactive shell inside the container.

## Usage

- **To access the container** if it is already running:

    ```sh
    docker exec -it python-dev-container zsh
    ```

- **To stop the container**:

    ```sh
    docker-compose down
    ```

## Contributing

Feel free to submit issues or pull requests if you have suggestions or improvements.

## License

This project is licensed under 
