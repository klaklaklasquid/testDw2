FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y

COPY html /var/www/html
WORKDIR /var/www/html
RUN date > buildtime.txt

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 80/tcp
CMD service apache2 start && bash
