FROM node:14.15.4-alpine3.12
LABEL maintainer "Krid Singgaw"
WORKDIR /backend
COPY . /backend
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]