# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables to non-interactive (this prevents some prompts)
ENV DEBIAN_FRONTEND=noninteractive

# Run package updates and install packages
RUN apt-get update \
    && apt-get -y install curl git

# Upgrade Ubuntu
RUN apt-get -y upgrade

# Run package updates and install packages
RUN apt-get update \
    && apt-get install -y software-properties-common build-essential pip

RUN python3 -m pip install cmake
