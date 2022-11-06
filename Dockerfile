FROM python:3.7

# Defining working directory and adding source code
WORKDIR /app

COPY . .
COPY dataset .

# Install API dependencies
RUN pip install numpy pexpect
