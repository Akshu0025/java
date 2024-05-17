# Use a base image suitable for running Java applications
FROM openjdk:11-jdk

# Set the working directory
WORKDIR /app

# Install Gradle
RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://services.gradle.org/distributions/gradle-7.2-bin.zip && \
    unzip -d /opt/gradle gradle-7.2-bin.zip && \
    rm gradle-7.2-bin.zip

# Add Gradle to the PATH
ENV PATH=$PATH:/opt/gradle/gradle-7.2/bin

# Copy the project files into the Docker image
COPY . .

# Build the project using Gradle
RUN gradle build

# Expose the port
EXPOSE 7000

# Define the command to run the Java application
CMD ["java", "-jar", "build/libs/my-java-app.jar"]
