FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy application code and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Expose port
EXPOSE 8000

# Command to start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
