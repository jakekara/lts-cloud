FROM node:8-alpine

WORKDIR /deps

COPY let-them-speak/package.json /deps/package.json

RUN npm install --no-optional

WORKDIR /lts-app
