FROM openjdk:8
# Build the application with Maven
EXPOSE 8083
WORKDIR /app
ARG JAR_FILE=target/*.jar
COPY ./target/spring-boot-docker.jar /app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
