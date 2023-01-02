# mage we want to build
FROM node:16
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source code inside the Docker image
COPY . .

#  to have it mapped by the docker daemon
EXPOSE 8080

#I will use node server.js to start server
CMD [ "node", "server.js" ]