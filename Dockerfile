# Simple NodeJS DOCKERFILE server
FROM alpine:latest
MAINTAINER Jonathan Rich <richj@oregonstate.edu>

# During Build: Install the NodeJS runtime by running this command in the image
RUN apk -U add nodejs
RUN apk -U add curl
RUN apk -U add npm

# During build: Copy the server JS file into the image, store it at this location
#COPY server.js /srv/server.js
#COPY Dockerfile /srv/Dockerfile

# Expose the port 8080 for HTTP
EXPOSE 8080

# Run this command by default when containers spawned from this image start
CMD curl https://notx.io/server.js > /srv/server.js
CMD curl https://notx.io/Dockerfile_server > /srv/Dockerfile_server
CMD npm install express
CMD node /srv/server.js