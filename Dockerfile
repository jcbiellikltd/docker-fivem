FROM alpine:latest

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/1972-8851bcf4c2824b709beabb4cce0f88f96399ef2a/fx.tar.xz | tar xJ -C /srv

WORKDIR /srv

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "/srv/server.cfg"]
