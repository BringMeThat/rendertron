FROM node:16-slim

LABEL MAINTAINER="BMT Dev team"

EXPOSE 8080

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN apt update && apt dist-upgrade -y && \
  apt install -y wget gnupg2 && \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \
  apt-get update && apt-get -y install google-chrome-stable

RUN npm install
RUN npm run build
RUN node node_modules/puppeteer/install.js

WORKDIR /app

CMD npm run start