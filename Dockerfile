FROM selenium/standalone-firefox-debug:2.50.0
MAINTAINER MMU

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    libreoffice \
    openjdk-8-jre \
    icedtea-8-plugin