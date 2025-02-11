# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 (default for Flask)
EXPOSE 5000

# Define the command to run your Flask app
CMD ["python", "app.py"]
