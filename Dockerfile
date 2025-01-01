# Use the official Tomcat image with JDK 17
FROM tomcat:9.0-jdk17

# Expose the default Tomcat port
EXPOSE 8080

# Remove the default ROOT application (optional, for cleanliness)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file into the webapps directory
COPY ./target/SpringBootWebMVCProject-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Start the Tomcat server
CMD ["catalina.sh", "run"]
