FROM ubuntu:14.04

MAINTAINER Tsundere Chen <tsundere@kisekinoashita.org>

RUN apt update && apt upgrade -y && apt install -y git libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm make build-essential libjansson-dev libgmp-dev libssl-dev 

WORKDIR /root

RUN git clone https://github.com/hmage/cpuminer-opt

WORKDIR /root/cpuminer-opt

RUN ./build.sh

ENTRYPOINT ["/root/cpuminer-opt/cpuminer"]
