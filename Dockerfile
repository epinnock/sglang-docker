# Use NVIDIA PyTorch Image as the base
FROM nvcr.io/nvidia/pytorch:24.01-py3

#install flashinfer
RUN pip install flashinfer -i https://flashinfer.ai/whl/cu121/

# Install additional Python package
RUN pip install "sglang[all]"

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Specify the default command
ENTRYPOINT ["/entrypoint.sh"]
