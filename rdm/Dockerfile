FROM ubuntu:latest
MAINTAINER Hua Wei <weihua19900704@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git lsb-release sudo software-properties-common g++ gcc

RUN git clone --recursive https://github.com/uglide/RedisDesktopManager.git -b 0.9 rdm \
    && cd ./rdm/src \
    && ./configure \
    && qmake \
    && make \
    && sudo make install \
    && cd /opt/redis-desktop-manager/ \
    && sudo mv qt.conf qt.backup

#ENV QT_QPA_PLATFORM_PLUGIN_PATH /opt/qt56/plugins/platforms/
#ENV LD_LIBRARY_PATH=/opt/qt56/lib/

CMD /opt/redis-desktop-manager/rdm
