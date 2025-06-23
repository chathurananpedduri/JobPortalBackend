# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the Maven wrapper and pom.xml
COPY .mvn .mvn
COPY mvnw pom.xml ./

# Copy the source code
COPY src ./src

# Package the application
RUN ./mvnw clean package -DskipTests

# Expose port 8080
EXPOSE 8080

# Set environment variables (these will be overridden by deployment env)
ENV DB_URL=""
ENV DB_USERNAME=""
ENV DB_PASSWORD=""
#ENV JWT_SECRET=""

# Run the application
CMD ["java", "-jar", "target/jobPortal-0.0.1-SNAPSHOT.jar"] 