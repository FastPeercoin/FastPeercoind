FastPeercoind
=============

### What is FastPeercoind?

This repo provides the fastpeercoind and fastpeercoin-cli executables for use in server environments.

A Docker based approach to building and running the fastpeercoind is provided.

### Building and running

1. Docker
    - ```
    docker build -t fastpeercoin-ubuntu14 .
    ```
    - ```
    docker run -it --name fastpeercoin_build -v ~/fastpeercoin:/root/fastpeercoin fastpeercoin-ubuntu14 bash
    ```

    Once in the container you must now build the fastpeercoin
    
    ```
    cd /root
    git clone https://github.com/FastPeercoin/FastPeercoin.git fastpeercoin
    cd fastpeercoin
    git checkout FastPeercoin
    ```

    Once cloned you can finally build
    ```
    ./autogen.sh
    ./configure --with-incompatible-bdb
    make -j$(nproc)
    ```

    Once built, you can run it
    ```
    cd /root/fastpeercoin/src
    ./peercoind -daemon
    ```

    Verify Status
    ```
    ./peercoin-cli getinfo
    ```
