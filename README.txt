A container for react development
To pull this image from docker hub use: docker pull empressabatour/node-react-mongo

includes: 
based of node:alpine 
Nano - for creating and modifying files from the bash ternimal 
Bash - to run CLI 
Webpack - web server to run app 
Babel - JS compiler for backwards compatability 

To start the service run 

docker build -t node-react-mongo:<tag> . 

docker run -it node-react-mongo:<tag> 

when completed you should now be in the bash terminal 

run npx create-react-app 

follow the commands 

cd into my-app

run npm start 

this will start a webpack server and allow for local access to the app. 

to modify files run the command nano <file name> in the bash terminal 

ctrl+ o - save to file 
ctrl+ x - exit 

run command exit to exit the container