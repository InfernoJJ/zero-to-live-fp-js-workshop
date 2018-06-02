FROM node:alpine

RUN mkdir /src
WORKDIR /src

COPY src/packages packages/
COPY src/services services/
COPY services.config.js .
COPY package.json .

# We're only exposing three services at the moment
EXPOSE 8000 8001 8002

RUN yarn
CMD ["yarn", "start"]
