#Specify a base image
FROM node:alpine

WORKDIR /usr/src/sample-app

#Dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default commands
CMD ["npm", "start"]