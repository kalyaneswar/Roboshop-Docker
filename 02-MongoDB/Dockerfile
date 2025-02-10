# Use the official MongoDB version 4.4 as the base image for the container.
FROM mongo:4.4

# Copy all JavaScript files from the local "scripts" directory to the container's
# /docker-entrypoint-initdb.d/ directory. These scripts will be executed by MongoDB 
# when the container starts up for the first time, and they can be used to initialize
# the database (e.g., creating collections or inserting data).
COPY scripts/*js /docker-entrypoint-initdb.d/

# Expose the default MongoDB port (27017) to allow external connections to the database.
EXPOSE 27017
