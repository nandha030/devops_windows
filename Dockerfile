FROM ubuntu:latest
MAINTAINER Karthick Selvam "karthick1808@hotmail.com"
RUN apt-get update -y && apt-get upgrade -y && apt-get install apt-utils -y
RUN apt-get install software-properties-common -y && apt-get install network-manager -y
EXPOSE 80/tcp
RUN useradd -m -d /home/karthick karthick
RUN apt-get install nginx -y
RUN mkdir /karthick && mkdir /demo
COPY index.html /karthick
ADD https://www.free-css.com/assets/files/free-css-templates/download/page248/cube.zip /karthick
WORKDIR /demo
ADD https://www.free-css.com/assets/files/free-css-templates/download/page248/cube.zip .
ENTRYPOINT service nginx start && bash
USER karthick
RUN mkdir /home/karthick/karthick1808
USER root
