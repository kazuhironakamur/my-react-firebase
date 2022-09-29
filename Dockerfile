FROM node:16.17.1-alpine

COPY my-app /
WORKDIR /my-app
RUN npm update

EXPOSE 3000
CMD npm start