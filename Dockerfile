FROM node:14.5-alpine

RUN npm install -g  nodemon node-sass  yorkie

WORKDIR /home/node

ADD . .

RUN npm i

EXPOSE 3000

CMD nodemon server/app.js