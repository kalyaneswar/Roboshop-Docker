# Use the official Redis image from Docker Hub
FROM redis:latest

# Set the working directory (optional but can be useful for adding custom configurations)
WORKDIR /usr/local/etc/redis

# Copy custom Redis configuration file (if you have one) into the container
# This file could configure things like persistence, max memory, and other Redis settings
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose Redis default port 6379 to allow communication with the Redis server
EXPOSE 6379

# Command to run Redis with the custom configuration file
# If you don't provide a custom config, Redis will use its default configuration
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

# Inside the container, use the following command to start the Redis CLI:
# redis-cli

# Ping Redis:
    # redis-cli ping
# Set a key-value pair:
    # redis-cli set mykey myvalue
# Get the value of a key:
    # redis-cli get mykey
# Delete a key:
    # redis-cli del mykey
# List all keys:
    # redis-cli keys *
# Check the number of keys:
    # redis-cli dbsize
# Exit the Redis CLI:
    # exit
# To stop the Redis server, press Ctrl+C in the terminal where the container is running.
# To stop the container, use the following command:
    # docker stop <container_id>
