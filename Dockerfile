FROM node:16.17.1-alpine

RUN npx create-react-app my-app
WORKDIR /my-app
RUN npm update
RUN npm install firebase firebase-tools

EXPOSE 3000
EXPOSE 9005

CMD npm start