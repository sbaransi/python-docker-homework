# DevOps Zero-Dependency Web Server

A minimal, lightning-fast Python web server containerized with Docker. Designed to demonstrate core containerization principles without the overhead of external frameworks.

## Project Structure

.
├── app.py              # Core Python application (Standard Library)
├── requirements.txt    # Dependency tracker (Empty by design)
├── Dockerfile          # Container image definition
└── README.md           # Project documentation

## Architecture

This application utilizes Python's native `http.server` module to listen on port 8080. 
By relying strictly on the standard library, this microservice eliminates the need for `pip install` during the build phase, resulting in faster build times and a reduced security attack surface.

## Running Locally

**With Docker:**
```bash
docker build -t devops-app .
docker run -p 8080:8080 devops-app