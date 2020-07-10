FROM node:14.5-alpine

RUN npm install -g  nodemon node-sass  yorkie

ADD . .

RUN npm i

CMD ./cmd.sh