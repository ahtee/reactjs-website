# Dockerfile
FROM node:8.11.3-alpine

ENV NODE_VERSION 8.11.3

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

EXPOSE 3000

USER node

CMD [ "npm", "start" ]