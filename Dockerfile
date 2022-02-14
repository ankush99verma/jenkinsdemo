FROM ubuntu:latest
WORKDIR /app
ADD . /app
WORKDIR /lib/systemd/system/
ADD /app/nodeapp.service /lib/systemd/system/ 
RUN npm install
RUN npm init
EXPOSE 3000
CMD sudo systemctl start nodeapp
