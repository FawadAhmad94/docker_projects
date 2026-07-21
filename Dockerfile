FROM node
WORKDIR /nodeapp
COPY . .
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty
CMD ["node","/nodeapp/server.js"]	
