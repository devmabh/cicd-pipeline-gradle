FROM node:carbon 
WORKDIR /usr/src/app 
copy package*.json ./ 
RUN npm install 
COPY ..
EXPOSE 8080
CMD {"npm", "start"} 
