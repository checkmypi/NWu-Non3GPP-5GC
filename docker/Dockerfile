FROM ubuntu:focal

RUN apt-get -y update && apt-get install -y git python3-pip libpcsclite-dev vim iproute2 swig net-tools
COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt 
RUN apt-get -y install tcpdump sudo


