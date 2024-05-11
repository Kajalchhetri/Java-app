# Use a base image with Java pre-installed
FROM openjdk:11

# Set the working directory inside the container
WORKDIR app/

# Copy the compiled Java application JAR file into the container
COPY Hello.java .

#compile the code
RUN javac Hello.java

# Specify the command to run your Java application when the container starts
CMD ["java", "Hello"]

