FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

#STAGE2
FROM nginx
COPY --from=node /app/dist/vindo-app/ /usr/share/html/


