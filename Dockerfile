FROM devth/helm:2.7.2

MAINTAINER USU Software AG

RUN helm plugin install https://github.com/technosophos/helm-template
RUN apk update && apk add jq tzdata zip coreutils && rm -rf /var/cache/apk/*
RUN cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && echo "Europe/Berlin" >  /etc/timezone
