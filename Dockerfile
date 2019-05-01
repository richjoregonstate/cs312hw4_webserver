# Simple NodeJS DOCKERFILE server
FROM alpine:latest
MAINTAINER Jonathan Rich <richj@oregonstate.edu>

# During Build: Install the NodeJS runtime by running this command in the image
RUN apk -U add nodejs
RUN apk -U add curl
RUN apk -U add npm
RUN curl https://notx.io/server.js > server.js
RUN curl https://notx.io/Dockerfile_server > Dockerfile
RUN npm install express

EXPOSE 8080
CMD node server.js
