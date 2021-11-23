FROM maven:3.8.2-openjdk-11 AS build

WORKDIR /build
COPY pom.xml .

COPY src /build/src

RUN set -eux; \
mvn --batch-mode --quiet clean package
