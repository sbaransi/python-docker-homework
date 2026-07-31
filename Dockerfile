# Use a lightweight, official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the server script into the container
COPY server.py /app/

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the Python server
CMD ["python", "server.py"]
