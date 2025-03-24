# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the Django project into the container
COPY . .

# Expose the port and run the development server
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
