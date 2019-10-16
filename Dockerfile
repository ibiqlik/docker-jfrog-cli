FROM alpine:latest

ENV JFROG_CLI_OFFER_CONFIG=false

RUN apk update \
    && apk add curl jq \
    && rm -rf /var/cache/apk/*

RUN curl -Lo /usr/bin/jfrog https://api.bintray.com/content/jfrog/jfrog-cli-go/\$latest/jfrog-cli-linux-amd64/jfrog?bt_package=jfrog-cli-linux-amd64 && \
    chmod +x /usr/bin/jfrog
