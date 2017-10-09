# What is SiaD?

SiaD is the console full node & miner provided by [NebulousLabs](https://github.com/NebulousLabs/Sia).

SiaD supports Siacoin (SC).

# How to use this image [AMD64 version]

Create shared volume:

```console
$ docker volume create --name siad
```

Run in background:

```console
$ docker run -v siad:/siad -d --name YOUR_CONTAINER_NAME -p YOUR_PORT:YOUR_PORT calvintam236/siad:amd64 --api-addr :YOUR_PORT -M gctwh -d /siad
```

Get `siad` options with:

```console
$ docker run --rm calvintam236/siad:amd64
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
