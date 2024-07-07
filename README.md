# Python Development Environment

This project provides a Docker-based Python development environment. It includes Python, Git, Zsh, and OpenSSH, and is configured to use your SSH keys for Git operations.

## Project Structure

python-dev-environment/
├── Projects/
├── Dockerfile
├── docker-compose.yml
├── run-python-container.sh
├── README.md


- `Projects/`: This is where you can put your Python projects.
- `Dockerfile`: Defines the Docker image.
- `docker-compose.yml`: Configures the Docker services.
- `run-python-container.sh`: A script to build, run, and exec into the Docker container.
- `README.md`: This file.

## Getting Started

1. **Clone the repository**:

    ```sh
    git clone https://github.com/yourusername/python-dev-environment.git
    cd python-dev-environment
    ```

2. **Ensure you have Docker and Docker Compose installed**.

3. **Make sure your SSH keys are set up and located in `~/.ssh`**.

4. **Run the setup script**:

    ```sh
    ./run-python-container.sh
    ```

This script will build the Docker container, start it in detached mode, and then open an interactive shell inside the container.

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
