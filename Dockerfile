FROM node:lts-alpine
WORKDIR /app
RUN node --version && npm --version && yarn --version &&\
 yarn global add react-static &&\
 apk update && apk add make
USER node
