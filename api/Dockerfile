FROM ubuntu

RUN apt-get -y update

RUN apt-get -y install openjdk-11-jdk

COPY . /api

WORKDIR /api

RUN ./mvnw clean package -Dquarkus.package.type=uber-jar -Dmaven.test.skip=true

WORKDIR /api/target

ENTRYPOINT java -jar tlcdemoApp-1.0.0-SNAPSHOT-runner.jar

