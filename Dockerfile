FROM azul/zulu-openjdk-alpine:11-jre

COPY target/api.jar app.jar

ENV TZ America/Sao_Paulo

RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*

RUN apk --no-cache add curl

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]
