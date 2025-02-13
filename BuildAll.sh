#!/bin/bash

# Loop through each directory to build the Docker images
for i in 01-MySQL 02-MongoDB 03-Redis 04-RabbitMQ 05-Shipping 06-User 07-Catalogue 08-Cart 09-Payment 10-Web; do
    # Extract the service name by removing the leading number and hyphen
    service_name=$(echo $i | sed 's/^[0-9]*-//')
    
    echo "Building Docker image for $service_name"
    
    # Navigate to the service directory
    cd $i
    
    # Build the Docker image and tag it with the service name (lowercase) and version 1.0
    docker build -t ${service_name,,}:v1.0 .
    
    # Return to the main directory
    cd ..
done
