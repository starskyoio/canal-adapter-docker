FROM openjdk:8-jre-alpine3.9

LABEL maintainer="Linus Lee <leeyao1990@gmail.com>"

RUN echo "Asia/Shanghai" > /etc/timezone

RUN apk add --update bash ca-certificates openssl curl

RUN mkdir -p /usr/share/canal/adapter

COPY ./canal-adapter /usr/share/canal/adapter

WORKDIR /usr/share/canal/adapter

STOPSIGNAL SIGQUIT

ENTRYPOINT ["sh", "-c", "/usr/share/canal/adapter/bin/startup.sh && tail -F logs/adapter/adapter.log"]
