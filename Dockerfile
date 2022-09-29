FROM node:16.17.1-alpine

RUN npx create-react-app my-app
WORKDIR /my-app
RUN npm update

EXPOSE 3000
CMD npm start