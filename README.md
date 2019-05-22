# FiveM Server Container

[![Docker Pulls](https://img.shields.io/docker/pulls/joebiellik/fivem.svg)](https://hub.docker.com/r/joebiellik/fivem/)
[![Docker Stars](https://img.shields.io/docker/stars/joebiellik/fivem.svg)](https://hub.docker.com/r/joebiellik/fivem/)
[![Docker Build](https://img.shields.io/docker/automated/joebiellik/fivem.svg)](https://hub.docker.com/r/joebiellik/fivem/)
[![Docker Build Status](https://img.shields.io/docker/build/joebiellik/fivem.svg)](https://hub.docker.com/r/joebiellik/fivem/)

[FiveM](https://fivem.net/) server running on [Alpine Linux](https://hub.docker.com/_/alpine/).

## Configuration

See [example directory](https://github.com/jcbiellikltd/docker-fivem/tree/master/example) for sample config file.

## Quickstart

```yml
fivem:
  image: joebiellik/fivem

  stdin_open: true
  tty: true

  volumes:
    # You must provide a server config file
    - ./server.cfg:/srv/server.cfg

    - ./resources:/srv/resources
    - ./cache:/srv/cache

  ports:
    - "30120:30120/tcp"
    - "30120:30120/udp"
```
