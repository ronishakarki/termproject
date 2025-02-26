# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies in the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on (default is 5000)
EXPOSE 5000

# Set the environment variable to disable buffering of output (for Docker logs)
ENV PYTHONUNBUFFERED 1

# Define the command to run the Flask app
CMD ["python", "hello_world.py"]
