FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# EXPOSE 8080

#ENTRYPOINT ["/usr/src/app/config.json"]
ENTRYPOINT ["npm","start"]

#CMD ["npm","start"]

EXPOSE 8080
