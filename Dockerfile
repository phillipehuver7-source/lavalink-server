FROM eclipse-temurin:17-jdk-alpine

WORKDIR /opt/Lavalink

ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.4/Lavalink.jar Lavalink.jar

COPY application.yml application.yml

EXPOSE 2333

ENTRYPOINT ["java", "-Djdk.tls.client.protocols=TLSv1.2", "-jar", "Lavalink.jar"]
