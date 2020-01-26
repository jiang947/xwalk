FROM ubuntu:18.04

RUN apt-get update && apt-get install lsb-core sudo python curl git vim -y 

RUN mkdir /workspace && cd /workspace

RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
