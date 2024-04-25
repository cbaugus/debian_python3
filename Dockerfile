# Use Debian 12 (Bullseye) as the base image
FROM debian:12

# Update package lists and install Python 3
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Set Python 3 as the default Python interpreter
RUN ln -s /usr/bin/python3 /usr/bin/python

# Optionally, set the working directory
#WORKDIR /app

# Optionally, copy your application files into the image
# COPY . /app

# Optionally, set the default command to run when the container starts
# CMD ["python", "app.py"]
