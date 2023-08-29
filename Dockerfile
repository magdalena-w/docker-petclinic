FROM eclipse-temurin:17-jdk-jammy

# Set the working directory to /app
WORKDIR /app

# Copy the pre-built JAR file into the container
COPY target/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file when the container starts
CMD ["java", "-jar", "app.jar"]
