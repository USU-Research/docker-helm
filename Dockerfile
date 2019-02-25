FROM devth/helm:v2.12.3

MAINTAINER USU Software AG

RUN apk --update add jq tzdata zip coreutils gnupg bash-completion && rm -rf /var/cache/apk/*
RUN cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && echo "Europe/Berlin" >  /etc/timezone
RUN echo "source <(kubectl completion bash)" >> ~/.bashrc

ADD ./jitcrypt /bin
RUN chmod u+x /bin/jitcrypt
