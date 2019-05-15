FROM ubuntu:19.04

WORKDIR /home

RUN apt-get update -y && apt-get upgrade -y && apt-get install netcat curl nmap node npm -y

COPY app.js ./

EXPOSE 8080

CMD ["npm", "start"]
