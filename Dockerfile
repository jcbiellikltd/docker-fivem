FROM alpine:latest

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/651-9979540ed3eb68238b0caa079d8b6352b1c28c16/fx.tar.xz | tar xJ -C /srv

WORKDIR /srv
VOLUME ["/srv/cache", "/srv/resources"]

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "server.cfg"]
