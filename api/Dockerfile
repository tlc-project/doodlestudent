FROM ubuntu

RUN apt-get -y update

RUN apt-get -y install openjdk-11-jdk

COPY . /api

WORKDIR /api

RUN ./mvnw package -Dquarkus.package.type=uber-jar -Dmaven.test.skip=true

RUN mkdir /work

RUN cp ./target/tlcdemoApp-1.0.0-SNAPSHOT-runner.jar /work/

WORKDIR /work

ENTRYPOINT java -jar tlcdemoApp-1.0.0-SNAPSHOT-runner.jar
