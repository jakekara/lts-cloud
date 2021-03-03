#FROM node:8-alpine
FROM lts-app-frontend-deps

COPY let-them-speak /lts-app

WORKDIR /lts-app    