FROM node:10
WORKDIR /app
COPY package.json .
RUN npm install
RUN npm install -g @angular/cli
COPY . .
EXPOSE 80
ENV PORT 80
CMD ["ng","serve","--host", "0.0.0.0","--port","80","--disableHostCheck"]
