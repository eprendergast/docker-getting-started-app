# Docker Cheat Sheet

Containers use an **isolated filesystem** provided by a container image. 

A **container image** contains everything needed to run an application (i.e. dependencies, scripts, binaries, environment variables, defauly command to run, metadata, etc.)

A **Dockerfile** is a text-based script of instructions used to create a container image.

Example Dockerfile: 

`FROM node:12-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]`



