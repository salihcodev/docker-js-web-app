# get an existing docker image to use as a base-image.
FROM node:alpine

# download & install the dependencies.
RUN yarn

# tell the image what to do when it starts as a container.
CMD ["yarn", "start"]