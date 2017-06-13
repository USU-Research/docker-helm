FROM devth/helm:2.4.2

MAINTAINER USU Software AG

RUN apk update && apk add jq && rm -rf /var/cache/apk/*

