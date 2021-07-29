FROM ubuntu:impish
#FROM debian:sid-slim

RUN apt update
RUN apt -y upgrade

# introspection convenience
RUN apt -y install htop less

# match Lunar's compiler versions
RUN apt -y install clang-11 gcc-10 g++-10 g++ clang
RUN ln -sf /usr/bin/clang-11 /usr/bin/clang
RUN ln -sf /usr/bin/clang++-11 /usr/bin/clang

# goes last because it creates symlinks for available binaries
RUN apt -y install distcc
