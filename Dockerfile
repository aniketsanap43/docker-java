FROM openjdk:8
# Build the application with Maven
RUN ./mvnw clean install -DskipTests
EXPOSE 8083
COPY target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]