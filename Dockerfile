FROM node:14.5-alpine

RUN npm install -g  nodemon

ADD . .

RUN npm i

CMD ./cmd.sh