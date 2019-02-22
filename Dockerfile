FROM alpine:3.8

ARG TG_VERSION=6547c0b

LABEL maintainer="Carlos Remuzzi <carlosremuzzi@gmail.com>"
LABEL version=1.3.1

WORKDIR /usr/src/build

RUN apk add --no-cache --virtual .build-deps \
        build-base \
        curl \
        git \
        jansson-dev \
        libconfig-dev \
        libevent-dev \
        lua-dev \
        openssl-dev \
        readline-dev \
        zlib-dev \
    && git clone https://github.com/vysheng/tg \
    && cd tg \
    && git submodule update --init --recursive --force \
    && ./configure \
    && make \
    && cp /usr/src/build/tg/bin/* /usr/local/bin

CMD ["telegram-cli"]
