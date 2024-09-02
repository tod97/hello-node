# Hello Node

Simple node.js app that servers "hello node"

## 1. Docker

I've configured a simple Dockerfile to run the app in a container following [this guide](https://docs.docker.com/get-started/workshop/02_our_app/). To build the image, run the following command:

```bash
docker build -t hello-node .
```

or use

```bash
npm run docker-build
```

To run the container, use the following command (**it is important to bind the port to the host**):

```bash
docker run -dp 127.0.0.1:3000:3000 hello-node
```

or use

```bash
npm run docker-run
```

By the way, I've created even a docker compose file to do the same things smoother. To run the container, use the following command (**-d to detach**):

```bash
docker-compose up
```

## 2. Jenkins

As suggested from [here](https://www.jenkins.io/doc/book/installing/docker/) I've run a sequence of commands to run Jenkins into a docker container. For semplification, I've created a script to run the container:

```bash
./jenkins/init-jenkins.sh
```
