FROM ubuntu:19.04

WORKDIR /home

RUN apt-get update -y
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install \
    netcat \
    nmap \
    python-pip \
    nodejs -y

RUN node -v && npm -v && pip --version

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
