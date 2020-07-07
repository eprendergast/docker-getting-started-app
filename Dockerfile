FROM node:12-alpine
WORKDIR /docker-getting-started-app
COPY . .
RUN yarn install --production
CMD ["node", "/docker-getting-started-app/src/index.js"]