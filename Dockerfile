# pull official base image
FROM node:current-alpine as Dev

ENV NODE_ENV=development

# set working directory
WORKDIR /usr/src

# install app dependencies
COPY package*.json ./

RUN npm install
RUN npm install -g nodemon

# set ports
EXPOSE 4000

CMD ["npm", "run", "dev"]


# Pull base image and upgrade it to prod level
FROM dev as Prod
# add env variable
ENV NODE_ENV=production
# Run npm for production
RUN npm install --production

COPY ./app ./app

CMD ["npm", "run", "start"]