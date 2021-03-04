# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
#Adding packages
RUN apk add --no-cache bash

# Copy War into image
COPY target/my-first-app-with-spring-1.0-SNAPSHOT.war /app.war

# Preserver application log to a directory on the host system
COPY src/main/resources/logback.xml /logback.xml

# Run application with this command line
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.activate=default", "-Dlogging.config=/logback.xml", "/app.war"]