# get an existing docker image to use as a base-image.
FROM node:alpine

# direct the docker to app directory.
WORKDIR /usr/app

# skip pkg.json if it has no recent changes.
COPY ./package.json ./

# download & install the dependencies.
RUN npm install

# get a copy of current pdoject files.
COPY ./ ./

# tell the image what to do when it starts as a container.
CMD ["npm", "start"]