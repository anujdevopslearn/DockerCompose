FROM ubuntu:18.04

RUN apt -y update && apt -y install openjdk-8-jdk maven apache2

WORKDIR /app

COPY . /app

RUN mvn clean install

EXPOSE 8080

ADD ./target/spring-boot-data-jpa-example-0.0.1-SNAPSHOT.jar spring-boot-data-jpa-example-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","spring-boot-data-jpa-example-0.0.1-SNAPSHOT.jar"]
