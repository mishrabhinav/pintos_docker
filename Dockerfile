FROM ubuntu:16.04
MAINTAINER Abhinav Mishra <mishrabhinav96@gmail.com>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninterative \
        apt-get install -y --no-install-recommends \
            curl \
            tar

RUN apt-get update && \
    DEBIAN_FRONTEND=noninterative \
        apt-get install -y --no-install-recommends \
            coreutils \
			manpages-dev \
            xorg openbox \
            ncurses-dev \
            wget \
            vim emacs \
            gcc clang make \
            gdb ddd \
            qemu

ENV PATH=/pintos/src/utils:$PATH

WORKDIR /pintos

