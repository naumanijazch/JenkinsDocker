FROM ubuntu:20.04

# Update packages and install curl
RUN apt-get update && \
    apt-get install -y curl

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# Install Python
RUN apt-get install -y python3 python3-pip

# Set aliases for python and pip
RUN ln -s /usr/bin/python3 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip

# Clean up the package cache
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*
