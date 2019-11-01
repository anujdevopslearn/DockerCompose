# DockerCompose

In this example we are running Docker compose for Spring Boot application. We need MySQL docker container for this application, so we need
to run both Docker containers using same Docker compose file.

First run maven build to generate artifacts using below command:

mvn clean install -DskipTests

Once artifacts is created please follow below set of commands to run docker compose file.

docker-compose up -d --build          (To build docker images and deploy using Docker compose file)

docker-compose down                   (Bring down all containers created using Docker compose)
