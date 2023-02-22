# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
RUN pip install fastai ipywidgets fastbook

# Expose the port that the application will run on (optional)
EXPOSE 8000

# Run the command to start the application
CMD ["python", "app.py"]
