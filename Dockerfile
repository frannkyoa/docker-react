FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install 
COPY . .
RUN npm build

FROM nginx
EXPOSE 80
CMD ["npm", "run", "start"]

