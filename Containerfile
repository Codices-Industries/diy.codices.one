FROM docker.io/library/alpine:3.23.2

ARG HUGO_VERSION

RUN apk add --no-cache \
  curl \
  git \
  libc6-compat \
  libstdc++ \
  ca-certificates

RUN curl -L \
  https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz \
  | tar -xz -C /usr/local/bin hugo

WORKDIR /src

ENTRYPOINT ["hugo"]
