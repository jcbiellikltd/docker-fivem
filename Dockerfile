FROM alpine:latest

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/626-ec89c64f976352a3420e6aea585752c4e9aafdbe/fx.tar.xz | tar xJ -C /srv

WORKDIR /srv
VOLUME ["/srv/cache", "/srv/resources"]

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "server.cfg"]
