FROM node

WORKDIR /docker-testapp

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

RUN mkdir -p /docker-testapp/testapp  

COPY . .

EXPOSE 5050

CMD ["node", "server.js"]