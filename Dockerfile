FROM node:10.15.0
WORKDIR /app
ADD . /app
WORKDIR /lib/systemd/system/
ADD nodeapp.service /lib/systemd/system/ 
RUN npm install
EXPOSE 3000
CMD sudo systemctl start nodeapp
