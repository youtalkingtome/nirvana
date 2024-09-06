# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file to the container
COPY target/nirvana-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 for the application
EXPOSE 8080

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
