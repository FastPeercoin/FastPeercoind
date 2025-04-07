FROM ubuntu:24.04

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

COPY . .

RUN ./autogen.sh && ./configure --with-incompatible-bdb && make

VOLUME /root/.fastpeercoin

EXPOSE 9999
EXPOSE 10000

# Run FastPeercoin Daemon
CMD ["./src/fastpeercoind"]
