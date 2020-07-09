ARG NODE_VERSION=8
FROM node:$NODE_VERSION
ARG APP_DIR
RUN mkdir -p $APP_DIR
WORKDIR ${APP_DIR}
COPY package.json .
RUN npm install --silent
