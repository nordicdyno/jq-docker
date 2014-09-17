FROM ubuntu:14.04
MAINTAINER Orlovsky Alexander <nordicdyno@gmail.com>
RUN apt-get -y update
RUN apt-get install -y git make gawk libtool autoconf automake gcc valgrind
RUN apt-get install -y bison byacc flex libonig-dev

RUN cd /root && git clone https://github.com/stedolan/jq.git
RUN cd /root/jq && autoreconf -i && ./configure && make -j4 LDFLAGS=-all-static && make install
