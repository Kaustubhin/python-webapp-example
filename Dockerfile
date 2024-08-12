# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /opt/app-root/src

# Install any needed packages
RUN pip install Flask

# Copy the current directory contents into the container at /opt/app-root/src
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run app.py when the container launches
CMD ["python", "app.py"]
