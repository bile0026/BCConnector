# start from base
FROM ubuntu:latest

MAINTAINER Zachary Biles zacharybiles@gmail.com

#install system-wide dependancies for java and download BCConnector 
RUN apt -y update --fix-missing && apt install -y \
	default-jre \
	wget
RUN wget https://github.com/bile0026/BCConnector/bcconnector-11.19.1.7.deb
RUN dpkg -i bcconnector-11.19.1.7.deb || true

#expose ports 
EXPOSE 35057
EXPOSE 23000

#start BCConnector
  
