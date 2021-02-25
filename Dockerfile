FROM node:13

# set working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install and cache app dependencies
COPY package.json /usr/src/app/

RUN npm install

# add app
COPY . /usr/src/app

# prod port
EXPOSE 8081

# start app
CMD [ "npm", "start" ]