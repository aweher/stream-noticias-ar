# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY . .

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files to the working directory
ADD templates /app/templates

# Set the environment variable for Flask
ENV FLASK_APP=webapp.py

# Expose the port on which the Flask app will run
EXPOSE 10000

# Run the Flask app
CMD ["gunicorn", "-w 4", "-b", "0.0.0.0:5000", "app:app"]