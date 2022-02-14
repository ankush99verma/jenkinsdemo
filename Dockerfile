FROM ubuntu:latest
WORKDIR /app
ADD . /app
WORKDIR /lib/systemd/system/
ADD nodeapp.service /lib/systemd/system/ 
RUN sudo apt install nodejs npm
EXPOSE 3000
CMD sudo systemctl start nodeapp
