FROM alpine:3.11
MAINTAINER pjpires@gmail.com

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN apk upgrade --update-cache; \
    apk add openjdk11-jre; \
    rm -rf /tmp/* /var/cache/apk/*

CMD ["java", "-version"]
