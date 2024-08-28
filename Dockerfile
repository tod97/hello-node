FROM node:slim
WORKDIR /hello-node
COPY . .
RUN npm i
CMD ["npm", "start"]
EXPOSE 3000