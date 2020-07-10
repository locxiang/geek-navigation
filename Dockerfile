FROM node:14.5-alpine

RUN npm install -g  nodemon
RUN npm install -g yorkie
RUN npm install -g sass

WORKDIR /home/node

ADD . .

RUN npm i -v

RUN npm build

EXPOSE 3000

CMD nodemon server/app.js