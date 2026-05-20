# Use a Java 25 runtime
FROM eclipse-temurin:25-jdk-alpine
VOLUME /tmp

# Copy the jar from Gradle's build directory
COPY build/libs/*.jar app.jar

# Run the application
ENTRYPOINT ["java","-jar","/app.jar"]