FROM ubuntu:20.04
MAINTAINER wade <wadeling@gmail.com>
#resolv debconf: unable to initialize frontend: Dialog
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
#others
apt install -y wget \
curl \
git \
cmake \
build-essential \
autoconf \
automake \
libtool \
m4 \
valgrind \
bison \
flex \
gperf \
ninja-build \
python-pytest \
check \
libssl-dev \
zlib1g \
zlib1g-dev \
libbz2-dev \
libncurses5-dev \
libncursesw5-dev \
libxml2-dev \
libpcre2-dev \
libjson-c-dev \
libmspack-dev  \
libc6-dev \
libcurl4-openssl-dev \
libmilter-dev \
software-properties-common 

RUN add-apt-repository -y ppa:deadsnakes/ppa && \
apt update && apt install -y python3.8 && \
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup.rs && \
sh rustup.rs -y && \
bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

ENTRYPOINT ["/bin/bash"]
