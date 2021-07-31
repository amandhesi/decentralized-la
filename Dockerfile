# stage1 - build react app first 
FROM node:14-alpine as build
WORKDIR /app
COPY . ./
# ENV PATH /app/node_modules/.bin:$PATH
# RUN npm install --save
# RUN npm run build
RUN yarn
RUN yarn build

# stage 2 - build the final image and copy the react build files
FROM nginx:alpine
COPY nginx/nginx.conf /etc/nginx/conf.d/configfile.template
COPY --from=build /app/build /usr/share/nginx/html

ENV PORT 8080
ENV HOST 0.0.0.0
EXPOSE 8080
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"