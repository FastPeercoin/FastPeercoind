FastPeercoind
=============

### What is FastPeercoind?

This repo provides the fastpeercoind and fastpeercoin-cli executables for use in server environments.

A Docker based approach to building and running the fastpeercoind is provided.

### Building and running

1. Docker
    ```
    docker build -t fastpeercoind .
    ```

    ```
    docker run -d -v /home/username/fastpeercoin:/root/.fastpeercoin -p 9999:9999 fastpeercoind
    ```
