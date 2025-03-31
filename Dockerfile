# Use official Python image as the base
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy the dependency file first
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the entire project
COPY . .
ENV PYTHONPATH=/app

# Run tests (optional during build)
# RUN pytest

# Default command (optional)
CMD ["pytest"]
