# Stage 1: Build dependencies (Securing the Multi-stage bonus)
FROM python:3.9-slim AS builder
WORKDIR /build
COPY requirements.txt .
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /build/wheels -r requirements.txt

# Stage 2: Final lightweight runner image
FROM python:3.9-slim
WORKDIR /app
# Copy the compiled wheels from the builder stage
COPY --from=builder /build/wheels /wheels
COPY --from=builder /build/requirements.txt .
# Install from the local wheels
RUN pip install --no-cache /wheels/*
# Copy the application code
COPY app.py .

# Expose the port required by the instructor
EXPOSE 5001

# Run the Flask application
CMD ["python", "app.py"]