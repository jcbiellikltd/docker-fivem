FROM alpine:latest

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/807-a33d6db066568046a9a99b14b0fccb03bb978e2f/fx.tar.xz | tar xJ -C /srv

WORKDIR /srv
VOLUME ["/srv/cache", "/srv/resources"]

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "server.cfg"]
