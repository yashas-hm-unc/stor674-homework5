# (Debian Based)
FROM python:3.9-slim

# Set working directory
WORKDIR /scripts

# Install torch dependency
RUN pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118

# Copy the compute_bench.py script into the container
COPY compute_bench.py .

# Default command to run the script
CMD ["python", "compute_bench.py"]