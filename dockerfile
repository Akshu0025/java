# Use a base image suitable for running Java applications
FROM openjdk:11-jdk

# Set the working directory
WORKDIR /app

# Use the find command to locate the JAR file and copy it into the Docker image
RUN find / -name "my-java-app.jar" -exec cp {} /app \;
EXPOSE 7000
# Define the command to run the Java application
CMD ["java", "-jar", "my-java-app.jar"]
