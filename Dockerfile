# Use a base image with Java installed
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY HelloWorld.java .

# Compile the Java code
RUN javac HelloWorld.java

# Specify the command to run the application when the container starts
CMD ["java", "HelloWorld"]