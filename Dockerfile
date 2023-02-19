# # pull official base image
FROM node:13.12.0-alpine as dist

# make directory
RUN mkdir -p /app
RUN chmod -R 777 /app
# set working directory
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
WORKDIR /app

COPY package.json ./
COPY . ./
RUN npm i

CMD ["npm", "start"]



# ENV HOME_MICROFRONTEND_URL=http://20.4.192.75:8086/home/quind-home.js
# ENV US_MICROFRONTEND_URL=http://20.4.192.77:8081/us/quind-us.js
# ENV NAVBARS_MICROFRONEND_URL=http://20.4.192.76:8085/navbars/quind-navbars.js


# FROM nginx:alpine

# #!/bin/sh

# COPY ./nginx.conf /etc/nginx/nginx.conf

# ## Remove default nginx index page
# RUN rm -rf /usr/share/nginx/html/*

# # Copy from the builder
# COPY ./dist /usr/share/nginx/html
EXPOSE 9000 
# ENTRYPOINT ["nginx", "-g", "daemon off;"]

