# What is SiaD?

SiaD is the console full node & miner provided by [NebulousLabs](https://github.com/NebulousLabs/Sia).

SiaD supports Siacoin (SC).

# How to use this image [X86_64 version]

Create shared volume:

```console
$ docker volume create --name siad
```

Run in background:

```console
$ docker run -v siad:/siad -d --name YOUR_CONTAINER_NAME -p YOUR_PORT_1-YOUR_PORT_3:YOUR_PORT_1-YOUR_PORT_3 calvintam236/siad:x86_64 --api-addr :YOUR_PORT_1 --authenticate-apu --disable-api-security --host-addr :YOUR_PORT_2 -M gctwh --rpc-addr :YOUR_PORT_3 -d /siad
```

Get `siad` options with:

```console
$ docker run --rm calvintam236/siad:x86_64
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
