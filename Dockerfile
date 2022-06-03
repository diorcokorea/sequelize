FROM node:10-alpine

WORKDIR /bezkoder-app
COPY package.json .
RUN npm install
COPY . .
RUN npm prune --production
CMD npm start
