# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set environment variables to prevent Python from writing .pyc files and to enable unbuffered logging


# Set a working directory inside the container
WORKDIR /app

# Install system dependencies

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose port 8000 for the Django development server
EXPOSE 8000

# Default command to run when the container starts
CMD ["bash"]
