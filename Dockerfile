# ORIGINAL

# FROM node:19-alpine3.16


# WORKDIR /usr/app
# COPY ./ /usr/app

# #Install bash
# RUN apk update && apk add bash
# #Install nano
# RUN apk add nano
# #Install react, webpack and babel
# RUN npm install react react-dom --save
# RUN npm install webpack webpack-dev-server webpack-cli --save
# RUN npm install babel-core babel-loader babel-preset-env babel-preset-react html-webpack-plugin --save-dev
# #run bash to start terminal
# CMD bash


# MAC VERSION
FROM node:14-alpine3.13  
# the version of the node image has been downgraded to node:14-alpine3.13

WORKDIR /usr/app
COPY . /usr/app

# Install bash and nano
RUN apk update && apk add bash nano

# Install react, webpack and babel
RUN npm install react react-dom --save
RUN npm install webpack webpack-dev-server webpack-cli --save
RUN npm install babel-loader @babel/core @babel/preset-env @babel/preset-react html-webpack-plugin --save-dev

# For the react, webpack, and babel installations, the only change is in the package names for babel-core and babel-preset-env, which are no longer used in the latest version of Babel. Instead, the latest syntax is used. Additionally, the CMD instruction is updated to use an array notation.



# Start bash
CMD ["bash"]