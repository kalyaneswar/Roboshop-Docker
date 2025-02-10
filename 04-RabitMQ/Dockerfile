FROM rabbitmq:management

# Set the working directory (optional but can be useful for adding custom configurations)
WORKDIR /usr/local/etc/rabbitmq

# Copy the custom RabbitMQ configuration file (if you have one) into the container
# This file could configure things like the default user, virtual hosts, and other RabbitMQ settings
# COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Expose the RabbitMQ default port 5672 to allow communication with the RabbitMQ server
EXPOSE 5672

ENV RABBITMQ_DEFAULT_USER=roboshop \
 RABBITMQ_DEFAULT_PASS=roboshop123

# Command to run RabbitMQ with the custom configuration file
# CMD ["rabbitmq-server", "-detached"]

# Inside the container, use the following command to start the RabbitMQ CLI:
# rabbitmqctl


# To start the RabbitMQ server, use the following command:
# rabbitmq-server
# To stop the RabbitMQ server, use the following command:
# rabbitmqctl stop
# To access the RabbitMQ management interface, open a web browser and go to http://localhost:15672
# The default username and password are "guest" and "guest". You can log in to the management interface to monitor queues, exchanges, and other RabbitMQ components.
# To stop the container, use the following command:
# docker stop <container_id>
# To remove the container, use the following command:
# docker rm <container_id>
# To remove the RabbitMQ image, use the following command:
# docker rmi rabbitmq
# To remove all stopped containers, use the following command:
# docker container prune
# To remove all unused images, use the following command:
# docker image prune
# To remove all unused volumes, use the following command:
# docker volume prune
# To remove all unused networks, use the following command:
# docker network prune
# To remove all unused resources (containers, images, volumes, and networks), use the following command:
# docker system prune
# To remove all Docker resources (containers, images, volumes, networks, and more), use the following command:
# docker system prune -a
# Note: Be careful when using the prune commands, as they will remove all unused resources from your Docker environment. Make sure you don't need any of the resources before running these commands.
# To list all Docker containers (including stopped containers), use the following command:
# docker ps -a
# To list all Docker images, use the following command:
# docker images
