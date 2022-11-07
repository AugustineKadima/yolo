FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN sudo apt-get install gnupg
RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
RUN sudo apt-get update
RUN sudo apt-get install -y mongodb-org
RUN sudo systemctl start mongod
COPY client /myapp/client
COPY backend /myapp/backend
ENTRYPOINT ["npm install --prefix client", "node server --prefix backend", "npm start --prefix client"] 