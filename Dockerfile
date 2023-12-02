FROM maven:3.8.3-openjdk-8 AS builder
# Build the application with Maven
EXPOSE 8083
RUN mvn clean install
ARG JAR_FILE=target/*.jar
COPY ./target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
