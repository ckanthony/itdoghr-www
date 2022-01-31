FROM node:lts-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app
RUN apk add --no-cache git
RUN yarn

COPY . /usr/src/app

EXPOSE 3000 

RUN yarn global add serve
CMD ["serve", "."]
