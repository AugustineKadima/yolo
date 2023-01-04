FROM node:16.18.1-alpine

# Create app directory
WORKDIR /usr/src/app/client

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

#Install dependencies
RUN npm install

#Copy the current directory . in the project to the working directory /usr/src/app/client in the image.
COPY . .

#Add metadata to the image to describe that the container is listening on port 3000
EXPOSE 3000
CMD [ "npm", "start" ]