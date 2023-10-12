FROM maven:3.9.4-eclipse-temurin-11 AS build
COPY pom.xml /tmp/
COPY src /tmp/src
WORKDIR /tmp/
RUN mvn package -DskipTestsg

ENTRYPOINT []

CMD ["catalina.sh", "run"]


