# Use a lightweight, official Python runtime
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Create a non-root user for Kubernetes security best practices
RUN useradd -m appuser
USER appuser

# Copy the server script into the container
COPY app.py /app/

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the Python server
CMD ["python", "app.py"]