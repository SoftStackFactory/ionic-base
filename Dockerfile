FROM node:8.11.1

#Create  app and change as working Directory
RUN mkdir -p /app
WORKDIR /app

# Copy package.json into container app folder
COPY package.json package-lock.json* ./

RUN apt get update && \
 apt-get install vim && \
 npm i npm@latest -g && \
 npm update && \
 npm install -g ionic cordova && \
 npm install && \
 npm cache clean --force


COPY . ./

EXPOSE 8100
EXPOSE 35729



