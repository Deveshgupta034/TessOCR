# Use a base image
FROM ubuntu:20.04

# Set non-interactive mode to avoid tzdata prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies (e.g., Tesseract)
RUN apt-get update && apt-get install -y tesseract-ocr libtesseract-dev

# Set the working directory in the container
WORKDIR /app

# Copy your app code into the container
COPY . /app

# Install Python dependencies or any other dependencies here
RUN pip install -r requirements.txt

# Expose the port your app is running on (Streamlit default is 8501)
EXPOSE 8501

# Start the application (example with Streamlit)
CMD ["streamlit", "run", "1_Home.py"]
