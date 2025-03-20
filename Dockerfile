# Barebone Ubuntu14.04 with required packages
FROM ubuntu:14.04

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libdb++-dev \
    libboost-all-dev \
    libtool \
    autotools-dev \
    autoconf \
    pkg-config \
    libevent-dev \
    git \
    curl \
    nano \
    wget \
    automake \
    bsdmainutils \
    software-properties-common \
    python \
    && apt-get clean

# Set working directory
WORKDIR /root

# Keep the container running (override this later when building)
CMD ["bash"]
