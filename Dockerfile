FROM node:19-alpine3.16


WORKDIR /usr/app
COPY ./ /usr/app

#Install bash
RUN apk update && apk add bash
#Install nano
RUN apk add nano
#Install react, webpack and babel
RUN npm install react react-dom --save
RUN npm install webpack webpack-dev-server webpack-cli --save
RUN npm install babel-core babel-loader babel-preset-env babel-preset-react html-webpack-plugin --save-dev
#run bash to start terminal
CMD bash
