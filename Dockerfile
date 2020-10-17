FROM node:current-slim

WORKDIR /usr/src/mfe1

COPY package.json ./
COPY yarn.lock ./
COPY . .

RUN yarn install @angular/cli@next
RUN yarn install

## TODO: Update this with real server
RUN yarn serve --prod 

EXPOSE 3000
