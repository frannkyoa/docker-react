FROM node:alpine as stage-builder
WORKDIR '/app'
COPY package.json .
RUN npm install 
COPY . .
RUN npm build

FROM nginx
EXPOSE 80
COPY --from=stage-builder /app/build /usr/share/nginx/html/

