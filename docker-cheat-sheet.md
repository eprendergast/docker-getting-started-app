# Docker Cheat Sheet

## The Basics

Containers use an **isolated filesystem** provided by a container image. 

A **container image** contains everything needed to run an application (i.e. dependencies, scripts, binaries, environment variables, defauly command to run, metadata, etc.)

A **Dockerfile** is a text-based script of instructions used to create a container image.

Example Dockerfile: 

`FROM node:12-alpine` <- instructs the builder that we want to start from the `node:12-alpine` image
`WORKDIR /app`
`COPY . .`
`RUN yarn install --production` <- installs the application dependencies
`CMD ["node", "/app/src/index.js"]` <- specifies the default command to run when starting a container from this image

## Build, Run, Stop, Remove

To build a container: 
`docker build -t getting-started .`

- `-t` flag tags our image with a name we can refer to when running the container
- `.` tells Docker that it should look for the Dockerfule in the current directory

To run the container: 
`docker run -dp 3000:3000 getting-started`

- `-d` runs the container in 'detached' mode (in the background)
- `-p` creates a mapping between the host's post 3000 to the container's port 3000.

To get the ID of a container: 
`docker ps`

To stop a container:
`docker stop <CONTAINER ID>`

To remove a container: 
`docker rm <CONTAINER ID>`

To stop and remove a container: 
`docker rm -f <CONTAINER ID>`

## Sharing an App

To list all Docker images:
`docker image ls`

To login:
`docker login -u <USERNAME>`

To tag a container:
`docker tag getting-started eprendergast1/getting-started`

To push to a Docker Hub repo: 
`docker push eprendergast1/<REPO NAME>`

## Persisting a DB

**Volumes** provide the ability to connect specific filesystem paths of the container back to the host machine. There are two types of volumes - **named volumes** and **INSERT HERE**

To create a volume: 
`docker volume create todo-db`

To start a container with a volume mount: 
`docker run -dp 3000:3000 -v todo-db:/etc/todos getting-started`

To view info about your volume: 
`docker volume inspect todo-db`

## Using Bind Mounts
