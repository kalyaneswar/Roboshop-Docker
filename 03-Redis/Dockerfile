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
