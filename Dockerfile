# Use the official Python base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your application code into the container
COPY . /app

# Expose the port your app will run on
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]
