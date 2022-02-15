FROM node:latest
MAINTAINER ankush verma
RUN echo "Trying to build my first application"
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
