# Use a base image with Java, Maven, and Tomcat pre-installed
FROM maven:3.8.6-openjdk-17-slim AS build

# Set the working directory
WORKDIR /app

# Copy the POM file to download dependencies
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline

# Copy the application source code
COPY . .

# Build the application
RUN mvn package -DskipTests

# Use a smaller base image with only Java and Tomcat
FROM tomcat:10.0.23-jdk17-openjdk-slim

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the built WAR file from the previous stage
COPY --from=build /app/target/docker-java.war .

# Expose the default Tomcat port
EXPOSE 8083

# Start Tomcat and deploy the application
CMD ["catalina.sh", "run"]
