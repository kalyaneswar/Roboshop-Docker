FROM node:iron-alpine3.21

WORKDIR /app

COPY package.json ./

COPY server.js ./

ENV MONGO=true \
    REDIS_HOST=redis \
    MONGO_URL="mongodb://mongodb:27017/users"

EXPOSE 8080
RUN npm install

CMD ["node", "server.js"]
