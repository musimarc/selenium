FROM selenium/standalone-firefox-debug
MAINTAINER MMU

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    LibreOffice \
    openjdk-8-jre \
    icedtea-8-plugin

RUN apt-get update && \
    apt-get install -y locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8 && \
    apt-get remove -y locales

ENV LANG C.UTF-8