# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    iproute2 \
    sshfs \
    unzip \
    less \
    groff

# Download and install kubectl
RUN curl -LO https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/

# Download and install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm awscliv2.zip

# Cleanup to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the working directory (optional)
WORKDIR /app

# Define an entry point or command (optional)
CMD ["sleep", "1d"]
