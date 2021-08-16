# this is for production use
FROM node:alpine
WORKDIR /app
COPY package.json .
COPY package-lock.json .
# we only want the production modules
RUN npm install -g @vue/cli
RUN npm install --production