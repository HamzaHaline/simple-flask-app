# Use a lightweight base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY app.py /app/

# Install Flask (dependency) with version pinning and without using cache directory
RUN pip install --no-cache-dir Flask==1.0.2

# Expose the port that Flask will run on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]


