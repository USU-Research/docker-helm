FROM devth/helm:2.6.0

MAINTAINER USU Software AG

RUN helm plugin install https://github.com/technosophos/helm-template
RUN apk update && apk add jq tzdata zip && rm -rf /var/cache/apk/*
RUN cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && echo "Europe/Berlin" >  /etc/timezone
