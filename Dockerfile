FROM node:16 as build
RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm install
COPY . /app
RUN npm run build --prod

FROM nginx:1.21.3-alpine as runtime
COPY --from=build /app/dist/todoapp /usr/share/nginx/html
