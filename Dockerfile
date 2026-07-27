FROM node:20-alpine
WORKDIR /app-node
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
EXPOSE 5050
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty
CMD ["node","server.js"]
