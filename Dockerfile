# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5001

# Define environment variable for Flask to run in production mode
ENV FLASK_ENV=production

# Run app.py when the container launches
CMD ["python", "myserver.py", "--host=0.0.0.0", "--port=5001"]

