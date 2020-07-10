FROM node:14.5-alpine

RUN npm install -g  nodemon
RUN npm install -g yorkie
RUN npm install -g sass
RUN npm install -g --unsafe-perm=true --allow-root --save-dev grunt node-sass

WORKDIR /home/node

ADD . .

RUN npm install --save

RUN npm run build

EXPOSE 3000

CMD nodemon server/app.js