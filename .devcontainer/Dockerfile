FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    && rm -rf /var/lib/apt/lists/*
