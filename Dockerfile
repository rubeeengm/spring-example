# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

# Copy War into image
COPY target/my-first-app-with-spring-1.0-SNAPSHOT.war /app.war

# Run application with this command line
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.activate=default", "/app.war"]