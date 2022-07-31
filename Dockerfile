FROM node:12.16.3-alpine

WORKDIR /usr/src/app

COPY package*.json /usr/src/app/

COPY . /usr/src/app

RUN npm install --no-install-recommends && npm run build

USER node

EXPOSE 4000

ENTRYPOINT [ "node", "dist/main.js" ]

CMD ["npm", "run", "start:prod"]