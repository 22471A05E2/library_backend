# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml
COPY .mvn/ .mvn
COPY mvnw mvnw.cmd pom.xml ./

# Copy source code
COPY src ./src

# Build application (creates target/*.jar)
RUN ./mvnw clean package -DskipTests

# Run the Spring Boot jar
CMD ["java", "-jar", "target/*.jar"]
