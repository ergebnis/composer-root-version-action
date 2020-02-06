FROM alpine:3.10

LABEL "repository"="https://github.com/ergebnis/composer-root-version-action"
LABEL "homepage"="https://github.com/ergebnis/composer-root-version-action"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

RUN apk --no-cache add gnupg

# https://github.com/stedolan/jq/wiki/Installation#with-docker
ENV JQ_VERSION="1.6"

RUN wget --no-check-certificate https://raw.githubusercontent.com/stedolan/jq/master/sig/jq-release.key -O /tmp/jq-release.key \
    && wget --no-check-certificate https://raw.githubusercontent.com/stedolan/jq/master/sig/v${JQ_VERSION}/jq-linux64.asc -O /tmp/jq-linux64.asc \
    && wget --no-check-certificate https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 -O /tmp/jq-linux64 \
    && gpg --import /tmp/jq-release.key \
    && gpg --verify /tmp/jq-linux64.asc /tmp/jq-linux64 \
    && cp /tmp/jq-linux64 /usr/bin/jq \
    && chmod +x /usr/bin/jq \
    && rm -f /tmp/jq-release.key \
    && rm -f /tmp/jq-linux64.asc \
    && rm -f /tmp/jq-linux64

RUN mkdir /app

WORKDIR /app

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
