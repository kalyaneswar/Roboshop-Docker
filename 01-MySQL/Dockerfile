# Use the MySQL 5.7 image as the base image
FROM mysql:5.7

# Set environment variables for MySQL configuration
 # Set the root password for MySQL
ENV MYSQL_ROOT_PASSWORD=RoboShop@1 \    
# Set the password for the default user
    MYSQL_PASSWORD=RoboShop@1 \   
# Create a database named 'cities'          
    MYSQL_DATABASE=cities \               
# Create a new user 'shipping' 
    MYSQL_USER=shipping                   

# Expose the MySQL port
EXPOSE 3306
# Copy all SQL scripts from the 'scripts' folder to the MySQL container's initialization directory
# These scripts will be executed when the container is initialized
COPY scripts/*.sql /docker-entrypoint-initdb.d/
