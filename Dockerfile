FROM openjdk:8
# Build the application with Maven
RUN ./mvnw clean install -DskipTests
EXPOSE 8083
ARG JAR_FILE=target/*.jar
COPY ./target/spring-boot-docker.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]