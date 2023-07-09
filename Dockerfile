FROM node:16-alpine

RUN mkdir ./express_app

WORKDIR /usr/express_app
COPY ./ /usr/express_app

RUN npm i
RUN npm run build:production

CMD [ "node" , "./dist/index" ]

