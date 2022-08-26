FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

RUN npm run build

# expose the same port as is configured in your digital ocean app spec
EXPOSE 8080

CMD [ "node", "dist/main.js" ]
