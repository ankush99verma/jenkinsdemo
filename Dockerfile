FROM ubuntu:latest
WORKDIR /app
ADD . /app
WORKDIR /lib/systemd/system/
ADD nodeapp.service /lib/systemd/system/ 
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN npm install
EXPOSE 3000
CMD systemctl start nodeapp
