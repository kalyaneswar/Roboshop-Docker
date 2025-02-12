FROM node:20

USER roboshop

WORKDIR /app

COPY package.json server.js ./

RUN npm install


ENV REDIS_HOST=redis \
    CATALOGUE_HOST=catalogue \
    CATALOGUE_PORT=8080   

CMD ["node", "server.js"]
