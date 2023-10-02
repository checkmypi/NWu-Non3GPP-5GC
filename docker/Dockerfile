FROM ubuntu:focal

RUN apt-get -y update && apt-get install -y git python3-pip libpcsclite-dev vim iproute2 swig
COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt 
RUN cd /tmp && git clone https://github.com/mitshell/CryptoMobile.git && cd /tmp/CryptoMobile && python3 setup.py install
RUN cd /tmp && git clone https://github.com/mitshell/card.git && cd /tmp/card && python3 setup.py install



