# 1. Use an official OpenJDK image as the base
# Change '17' to '21' or '11' depending on your Java version
FROM eclipse-temurin:21-jre-alpine
# or use -jre-slim if you prefer Debian-based slim images

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy your compiled JAR file into the container
# SOURCE (what to copy) -> DESTINATION (what to name it inside the container)
COPY web-api-product-0.0.1-SNAPSHOT.jar app.jar

# 4. Expose the port your app runs on (usually 8080 for Spring Boot)
EXPOSE 8080

# 5. Run the application
# Use the generic name 'app.jar' here
ENTRYPOINT ["java", "-Dserver.port=${PORT}", "-jar", "app.jar"]