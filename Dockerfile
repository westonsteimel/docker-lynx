FROM alpine:edge

RUN apk update && apk add --no-cache \
    ca-certificates \
    lynx \
    && addgroup lynx \
    && adduser -G lynx -s /bin/sh -D lynx

ENTRYPOINT ["lynx"]

LABEL org.opencontainers.image.title="lynx" \
    org.opencontainers.image.description="lynx in Docker" \ 
    org.opencontainers.image.url="https://github.com/westonsteimel/docker-lynx" \ 
    org.opencontainers.image.source="https://github.com/westonsteimel/docker-lynx"
