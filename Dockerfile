# pull official base image
FROM node:current-alpine

# set working directory
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./

RUN npm install

# set ports
EXPOSE 4000

CMD ["npm", "run", "dev"]