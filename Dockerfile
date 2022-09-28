FROM azul/zulu-openjdk-alpine:17-jre

COPY target/api.jar app.jar

ENV TZ America/Sao_Paulo

EXPOSE 80

ENTRYPOINT ["java", "-jar", "/app.jar"]
