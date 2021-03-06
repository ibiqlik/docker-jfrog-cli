FROM alpine:latest

ENV JFROG_CLI_OFFER_CONFIG=false

RUN apk --no-cache add curl jq

RUN curl -Lo /usr/bin/jfrog https://api.bintray.com/content/jfrog/jfrog-cli-go/\$latest/jfrog-cli-linux-amd64/jfrog?bt_package=jfrog-cli-linux-amd64 && \
    chmod +x /usr/bin/jfrog

ENTRYPOINT ["jfrog"]
