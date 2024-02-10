
# Web Application Docker Container with `sglang`

This project contains a Dockerfile and necessary scripts to build a Docker container based on NVIDIA's PyTorch image, with the `sglang` Python package installed. This setup is designed to launch a web application that utilizes the `sglang` package, specifically for running language models like Llama.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- Docker is installed on your system.
- You have an NVIDIA GPU setup if you intend to leverage GPU acceleration.

## Building the Docker Image

To build the Docker image, follow these steps:

1. Clone the repository to your local machine (if applicable).
2. Navigate to the directory containing the Dockerfile.
3. Run the following command, replacing `your_image_name` with your preferred image name:

```bash
docker build -t your_image_name .
```

This command builds a Docker image named `your_image_name` based on the provided Dockerfile.

## Running the Docker Container

To run the Docker container with the default command, use:

```bash
docker run your_image_name
```

To run the container with a custom command, such as changing the model path or port, append your command at the end. For example:

```bash
docker run your_image_name python -m sglang.launch_server --model-path your_model_path --port your_port
```

Replace `your_model_path` and `your_port` with your specific model path and port number.

## Customizing the Container

You can customize the Docker container by modifying the `entrypoint.sh` script or the Dockerfile to include additional dependencies or to change the startup behavior.

## Contributing to the Project

We welcome contributions! If you have suggestions for improvements or bug fixes, please open an issue or submit a pull request.

## Reporting Issues

If you encounter any problems, please file an issue along with a detailed description of the issue and steps to reproduce it.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
