<img src="https://github.com/buanet/ioBroker.docker/raw/main/docs/img/iobroker_logo.png" width="600" title="ioBroker Logo">

[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/buanet/iobroker/latest?style=flat)](https://hub.docker.com/r/buanet/iobroker)
[![Docker Pulls](https://img.shields.io/docker/pulls/buanet/iobroker?style=flat)](https://hub.docker.com/r/buanet/iobroker)
[![Docker Stars](https://img.shields.io/docker/stars/buanet/iobroker?style=flat)](https://hub.docker.com/r/buanet/iobroker)<br>
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/buanet/ioBroker.docker/Build%20debian%20based%20image%20\(latest\))](https://github.com/buanet/ioBroker.docker/actions/workflows/build-debian-image-main.yml)
[![Release](https://img.shields.io/github/v/release/buanet/ioBroker.docker?style=flat)](https://github.com/buanet/ioBroker.docker/releases)
[![Github Issues](https://img.shields.io/github/issues/buanet/ioBroker.docker?style=flat)](https://github.com/buanet/ioBroker.docker/issues)<br>
[![Source](https://img.shields.io/badge/source-github-blue?style=flat)](https://github.com/buanet/ioBroker.docker)
[![License](https://img.shields.io/github/license/buanet/ioBroker.docker?style=flat)](https://github.com/buanet/ioBroker.docker/blob/master/LICENSE.md)
[![Donate](https://img.shields.io/badge/donate-paypal-blue?style=flat)](https://paypal.me/buanet)

# Important note

New major image versions (e.g. v4, v5, v6) always come with a new major version of node! This might lead to problems when you update your ioBroker container by simply recreating it from the new major version image! To avoid having trouble with recompiling adapters, it is recommended to upgrade your container manually with backup and restore procedure. For more details please see the maintenance part of the new [ioBroker Docker image docs](https://docs.buanet.de/iobroker-docker-image/docs/#maintenance).

# Quick reference

* Maintained by: [buanet](https://github.com/buanet) and [ioBroker](https://github.com/ioBroker)
* Where to get support: [ioBroker Forum](https://forum.iobroker.net/), [ioBroker Discord Channel](https://discord.gg/HwUCwsH)
* Where to report issues: [Github Repository Issues](https://github.com/buanet/ioBroker.docker/issues)
* Supported architectures: amd64, arm32v7, arm64v8
* Changelog: [Github Repository Changelog](https://github.com/buanet/ioBroker.docker/blob/main/CHANGELOG.md)
* Source code: [Github Repository](https://github.com/buanet/ioBroker.docker)
* All other questions should be answered here: [ioBroker Docker image docs](https://docs.buanet.de/iobroker-docker-image/docs/) or [iobroker.net](https://www.iobroker.net/)

# Supported tags

It is highly recommended not to use the `latest` tag for production, especially when using any kind of automated update procedure like watchtower. Please use the `latest-v[X]` tag instead.

### Node 16 versions
* [`v7.0.1`](https://github.com/buanet/ioBroker.docker/blob/v7.0.1/debian/node16/Dockerfile), [`v7.0.1-amd64`](https://github.com/buanet/ioBroker.docker/blob/v7.0.1/debian/node16/Dockerfile), [`v7.0.1-arm32v7`](https://github.com/buanet/ioBroker.docker/blob/v7.0.1/debian/node16/Dockerfile), [`v7.0.1-arm64v8`](https://github.com/buanet/ioBroker.docker/blob/v7.0.1/debian/node16/Dockerfile), [`latest-v7`](https://github.com/buanet/ioBroker.docker/blob/v7.0.1/debian/node16/Dockerfile), [`latest`](https://github.com/buanet/ioBroker.docker/blob/v7.0.1/debian/node16/Dockerfile)
* [`v7.0.0`](https://github.com/buanet/ioBroker.docker/blob/v7.0.0/debian/node16/Dockerfile), [`v7.0.0-amd64`](https://github.com/buanet/ioBroker.docker/blob/v7.0.0/debian/node16/Dockerfile), [`v7.0.0-arm32v7`](https://github.com/buanet/ioBroker.docker/blob/v7.0.0/debian/node16/Dockerfile), [`v7.0.0-arm64v8`](https://github.com/buanet/ioBroker.docker/blob/v7.0.0/debian/node16/Dockerfile)

### Node 14 versions
* [`v6.1.0`](https://github.com/buanet/ioBroker.docker/blob/v6.1.0/debian/node14/Dockerfile), [`v6.1.0-amd64`](https://github.com/buanet/ioBroker.docker/blob/v6.1.0/debian/node14/Dockerfile), [`v6.1.0-arm32v7`](https://github.com/buanet/ioBroker.docker/blob/v6.1.0/debian/node14/Dockerfile), [`v6.1.0-arm64v8`](https://github.com/buanet/ioBroker.docker/blob/v6.1.0/debian/node14/Dockerfile), [`latest-v6`](https://github.com/buanet/ioBroker.docker/blob/v6.1.0/debian/node14/Dockerfile)
* [`v6.0.0`](https://github.com/buanet/ioBroker.docker/blob/v6.0.0/debian/node14/Dockerfile), [`v6.0.0-amd64`](https://github.com/buanet/ioBroker.docker/blob/v6.0.0/debian/node14/Dockerfile), [`v6.0.0-arm32v7`](https://github.com/buanet/ioBroker.docker/blob/v6.0.0/debian/node14/Dockerfile), [`v6.0.0-arm64v8`](https://github.com/buanet/ioBroker.docker/blob/v6.0.0/debian/node14/Dockerfile)

### Node 12 versions
* [`v5.2.0`](https://github.com/buanet/ioBroker.docker/blob/v5.2.0/debian/node12/Dockerfile), [`v5.2.0-amd64`](https://github.com/buanet/ioBroker.docker/blob/v5.2.0/debian/node12/Dockerfile), [`v5.2.0-arm32v7`](https://github.com/buanet/ioBroker.docker/blob/v5.2.0/debian/node12/Dockerfile), [`v5.2.0-arm64v8`](https://github.com/buanet/ioBroker.docker/blob/v5.2.0/debian/node12/Dockerfile), [`latest-v5`](https://github.com/buanet/ioBroker.docker/blob/v5.2.0/debian/node12/Dockerfile)
* [`v5.1.0`](https://github.com/buanet/ioBroker.docker/blob/v5.1.0/amd64/Dockerfile), [`v5.1.0-amd64`](https://github.com/buanet/ioBroker.docker/blob/v5.1.0/amd64/Dockerfile), [`v5.1.0-armv7hf`](https://github.com/buanet/ioBroker.docker/blob/v5.1.0/armv7hf/Dockerfile), [`v5.1.0-aarch64`](https://github.com/buanet/ioBroker.docker/blob/v5.1.0/aarch64/Dockerfile)
* [`v5.0.0`](https://github.com/buanet/ioBroker.docker/blob/v5.0.0/amd64/Dockerfile), [`v5.0.0-amd64`](https://github.com/buanet/ioBroker.docker/blob/v5.0.0/amd64/Dockerfile), [`v5.0.0-armv7hf`](https://github.com/buanet/ioBroker.docker/blob/v5.0.0/armv7hf/Dockerfile), [`v5.0.0-aarch64`](https://github.com/buanet/ioBroker.docker/blob/v5.0.0/aarch64/Dockerfile)

# What is ioBroker?

IoBroker is a open source IoT platform written in JavaScript that easily connects smarthome components from different manufactures. With the help of plugins (called: "adapters") ioBroker is able to communicate with a big variety of IoT hardware and services using different protocols and APIs.<br>
All data is stored in a central database that all adapters can access. With this it is very easy to build up logical connections, automation scripts and beautiful visualisations.<br>
For further details please check out [iobroker.net](https://www.iobroker.net).

# How to use this image?

## Running from command-line

For taking a first look at iobroker on docker it would be enough to simply run the following basic docker run command:

```
docker run -p 8081:8081 --name iobroker -h iobroker buanet/iobroker
```

## Running with docker-compose

When using docker-compose define the iobroker service like this:

```
version: '2'

services:
  iobroker:
    container_name: iobroker
    image: buanet/iobroker
    hostname: iobroker
    restart: always
    ports:
      - "8081:8081"
```

## Persistent data

To make your ioBroker configuration persistent it is recommended to mount a volume or path to `/opt/iobroker`.

On command-line add 
```
-v iobrokerdata:/opt/iobroker
```
On docker-compose add
```
    volumes:
      - iobrokerdata:/opt/iobroker
```

## Configuration via environment variables

You could use environment variables to auto configure your ioBroker container on startup. 

### Configure ioBroker application:

* `IOB_ADMINPORT`(optional, default: 8081) Sets ioBroker adminport on startup
* `IOB_MULTIHOST`(optional) Sets ioBroker "master" or "slave" for multihost support (needs additional config for objectsdb and statesdb!)
* `IOB_OBJECTSDB_HOST` (optional, default: 127.0.0.1) Sets host for ioBroker objects db
* `IOB_OBJECTSDB_PORT` (optional, default: 9001) Sets port for ioBroker objects db
* `IOB_OBJECTSDB_TYPE` (optional, default: jsonl) Sets type of ioBroker objects db, could be "jsonl", "file" (deprecated) or "redis" ([not officially supported](https://github.com/ioBroker/ioBroker#databases)).
* `IOB_STATESDB_HOST` (optional, default: 127.0.0.1) Sets host for ioBroker states db
* `IOB_STATESDB_PORT` (optional, default: 9000) Sets port for ioBroker states db
* `IOB_STATESDB_TYPE` (optional, default: jsonl) Sets type of ioBroker states db, could be "jsonl", "file" (deprecated) or "redis"

### Activate special features: 

* `AVAHI` (optional, default: false) Installs and activates avahi-daemon for supporting yahka-adapter, can be "true" or "false"
* `ZWAVE` (optional, default: false) Installs openzwave to support zwave-adapter, can be "true" or "false"

### Configure environment:

* `DEBUG` (optional, default: false) Set true to get extended logging messages on container startup
* `LANG` (optional, default: de_DE.UTF&#x2011;8) The following locales are pre-generated: de_DE.UTF-8, en_US.UTF-8
* `LANGUAGE` (optional, default: de_DE:de) The following locales are pre-generated: de_DE:de, en_US:en
* `LC_ALL` (optional, default: de_DE.UTF-8) The following locales are pre-generated: de_DE.UTF-8, en_US.UTF-8
* `OFFLINE_MODE` (optional & experimental, default: false) Set true if you container has no or limited internet connection
* `PACKAGES` (optional) Installs additional linux packages to your container, packages should be separated by whitespace like this: "package1 package2 package3".
* `SETGID` (default: 1000) In some cases it might be useful to specify the gid of the containers iobroker user to match an existing group on the docker host
* `SETUID` (default: 1000) In some cases it might be useful to specify the uid of the containers iobroker user to match an existing user on the docker host
* `TZ` (optional, default: Europe/Berlin) Specifies the time zone
* `USBDEVICES` (optional) Sets relevant permissions on mounted devices like "/dev/ttyACM0". For more than one device separate with ";".

## Notes about Docker networks

The examples above are dealing with the Docker default bridge network. In general there are [some reasons](https://docs.docker.com/network/bridge/#differences-between-user-defined-bridges-and-the-default-bridge) why it might be the better choice to use a user-defined bridge network. 

Using a Docker bridge network works fine for taking a first look and with most of the ioBroker adapters (if you don't forget to redirect the ports your adapters use).<br>
But some ioBroker adapters are using techniques like [Multicast](https://en.wikipedia.org/wiki/Multicast) or [Broadcast](https://en.wikipedia.org/wiki/Broadcasting_(networking)) for automatic detection of IoT devices<br>
In this case it may be useful to switch to [host](https://docs.docker.com/network/host/) or [MACVLAN](https://docs.docker.com/network/macvlan/) network. 

For more information about networking with Docker please refer to the [official Docker docs](https://docs.docker.com/network/). 

# Support the Project

If you like what you see please leave us stars and likes on our repos and join our growing community.
See you soon. :)
