FROM node:4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

RUN groupadd -r myuser && useradd -r -g myuser myuser

COPY . /usr/src/app
USER myuser
EXPOSE 1337
CMD [ "npm", "start" ]
