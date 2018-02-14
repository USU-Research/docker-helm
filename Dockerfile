FROM devth/helm:2.8.1

MAINTAINER USU Software AG

RUN apk update && apk add jq tzdata zip coreutils gnupg && rm -rf /var/cache/apk/*
RUN cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && echo "Europe/Berlin" >  /etc/timezone
