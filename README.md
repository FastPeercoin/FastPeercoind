FastPeercoin
============

### What is FastPeercoin?
It's Peercoin, but block times are sped way up.

It's experimental af

But it's new and shiny and you can get in on the ground floor!

CPU mining still readily available (while supplies last).

### Building and running

1. Use VirtualBox and Ubuntu 14.04 (Trusty Tahr)
2. Git clone the repository

```
git clone https://github.com/FastPeercoin/FastPeercoin
```

3. Checkout the FastPeercoin branch

```
cd FastPeercoin
git checkout FastPeercoin
```

4. Install dependencies

```
sudo apt update
sudo apt install build-essential libboost-all-dev libssl-dev libdb++-dev
```

5. Compile

```
./autogen.sh
./configure --with-incompatible-bdb
make
```

6. Mine

```
./src/qt/peercoin-qt -gen 1
```

7. Profit!?!
