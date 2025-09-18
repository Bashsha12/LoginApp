# Step 1: Use official Tomcat image as base
FROM tomcat:10.1-jdk17-temurin

# Step 2: Remove default ROOT webapps (optional, keeps image clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Copy our LoginApp.war into Tomcat's webapps directory
COPY target/LoginApp.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose Tomcat port
EXPOSE 8080

# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]

