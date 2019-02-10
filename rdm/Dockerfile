FROM ubuntu:latest
MAINTAINER Hua Wei <weihua19900704@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git lsb-release sudo software-properties-common

RUN git clone --recursive https://github.com/uglide/RedisDesktopManager.git -b 0.9 rdm \
    && cd ./rdm/src \
    && ./configure \
    #&& . /opt/qt56/bin/qt56-env.sh \
    && qmake \
    && make \
    && sudo make install \
    && cd /opt/redis-desktop-manager/ \
    && sudo mv qt.conf qt.backup

ENV QT_QPA_PLATFORM_PLUGIN_PATH /opt/qt56/plugins/platforms/
ENV LD_LIBRARY_PATH=/opt/qt56/lib/

CMD /usr/share/redis-desktop-manager/bin/rdm
