# Use a base image with Python
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Command to run the fetch_events.py script
CMD ["python", "fetch_events.py"]
