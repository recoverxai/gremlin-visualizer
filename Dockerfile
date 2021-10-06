FROM node:10-alpine

WORKDIR /app

COPY package* .
COPY proxy-server.js .

RUN npm cache clean --force && \
	npm config set strict-ssl false && \
	npm install

EXPOSE 3001

WORKDIR /app

CMD npm run server
