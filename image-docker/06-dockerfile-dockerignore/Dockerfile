ARG NODE_VERSION
FROM node:$NODE_VERSION
ARG APP_DIR
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY package.json .
RUN npm install --silent
COPY . .
EXPOSE 4200
ENV PORT 4200
CMD [ "npm", "start" ]
