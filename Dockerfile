# Stage 1: Build the application

FROM maven:3.8.3-openjdk-17 AS build

WORKDIR /app
COPY . .

RUN mvn clean package


# Stage 2: Create a minimal image

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
