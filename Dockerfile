FROM node:12-alpine
WORKDIR /docker-getting-started-app
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]