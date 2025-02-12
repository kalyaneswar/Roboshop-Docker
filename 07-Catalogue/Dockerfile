FROM node:20

USER roboshop

WORKDIR /app

COPY package.json server.js ./

RUN npm install

ENV MONGO=true \
    MONGO_URL="mongodb://mongodb:27017/catalogue"   

CMD ["node", "server.js"]
