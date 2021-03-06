# Base image
FROM node:13.12.0-alpine

# Create and set working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install and cache app dependencies
COPY ./package.json ./
RUN pwd
RUN ls -la
RUN npm install

expose 3000

# start app
CMD ["npm", "start"]