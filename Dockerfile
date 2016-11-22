FROM selenium/standalone-firefox-debug
MAINTAINER MM

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    LibreOffice \
    openjdk-7-jre \
    icedtea-web

RUN apt-get update && \
    apt-get install -y locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8 && \
    apt-get remove -y locales

ENV LANG C.UTF-8