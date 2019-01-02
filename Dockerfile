FROM alpine:latest

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/961-51d83f20ddfda30233f28c8ac3184d341406b080/fx.tar.xz | tar xJ -C /srv

WORKDIR /srv
VOLUME ["/srv/cache", "/srv/resources"]

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "server.cfg"]
