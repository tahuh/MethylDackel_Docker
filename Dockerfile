FROM ubuntu:16.04

MAINTAINER Thomas Sunghoon Heo <tahuh1124@gmail.com>

ENV PATH /usr/local/bin:$PATH
ENV LANG C.UTF-8

WORKDIR /mountedcwd
RUN mkdir -p /mountedcwd/tools
COPY . /mountedcwd/tools

# Obtain required library for samtools/HTSLib

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive; \
    apt install -y build-essential \
    autoconf automake perl \
    zlib1g-dev libbz2-dev \
    liblzma-dev libcurl4-gnutls-dev \
    libssl-dev libncurses5-dev
    
# compilation command for HTSLib
# Note. C source compilation must be done at one line command

RUN cd /mountedcwd/tools/htslib-1.9 && \
    ./configure --enable-plugins --enable-libcurl --enable-gcs && \
    make && \
    make install

RUN cd /mountedcwd/tools/libBigWig && \
	make install

RUN cd /mountedcwd/tools/MethylDackel && \
	make && \
	make install /usr/bin

ENV LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
