FROM node:16 as build-stage

WORKDIR /app

COPY package*.json src/assets/ ./

RUN yarn install --production

COPY . .

RUN yarn run build

FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]