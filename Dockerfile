FROM python:3.8

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8000

# Command to start Django development server
CMD ["python", "-m", "http.server", "8000"]

