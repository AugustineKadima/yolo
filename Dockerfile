FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade
RUN apt-get install nodejs npm