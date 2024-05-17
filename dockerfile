# Use a base image suitable for running Java applications
FROM openjdk:11-jdk

# Set the working directory
WORKDIR /app

# Copy the compiled Java application into the Docker image
COPY build/libs/my-java-app.jar .

# Define the command to run the Java application
CMD ["java", "-jar", "my-java-app.jar"]
