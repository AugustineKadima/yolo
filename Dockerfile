FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade
RUN apt-get install nodejs npm
COPY ./client /myapp/client
COPY ./backend /myapp/backend
ENTRYPOINT ["npm install --prefix client", "node server --prefix backend", "npm start --prefix client"] 