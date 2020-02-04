FROM ubuntu:16.04

RUN apt-get update && apt-get install lsb-core sudo python curl git vim -y 

RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

ENV PATH $PATH:/depot_tools
ENV XWALK_OS_ANDROID 1

RUN mkdir /workspace

WORKDIR /workspace

RUN cd /workspace && gclient config --name src/xwalk https://github.com/jiang947/crosswalk.git
