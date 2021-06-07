# syntax=docker/dockerfile:1

# This a React JS app from source.  We need NodeJS to build the app but once
# it is built we only need nginx to run it.
#
# https://hub.docker.com/_/node

FROM node:16-alpine AS build
# make source folder
RUN mkdir -p /app
WORKDIR /app
# add all source code and start compiling
COPY package-lock.json /app
COPY package.json /app
COPY public /app/public
COPY src /app/src
#RUN ls -al /app
RUN npm install
RUN npm run build

# All we need to do to serve the built application is a simple web server
# We could use "npm" as per the React build instructions, but nginx is
# simpler and faster.
#
# We just need to drop the built files in where nginx can find them.

FROM nginx:latest AS prod
COPY --from=build /app/build /usr/share/nginx/html
