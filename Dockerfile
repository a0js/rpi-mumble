FROM resin/rpi-raspbian
MAINTAINER Ammon Sarver <manofarms@gmail.com>

RUN useradd -u 1000 -p password mumble \
  && apt-get update \
  && apt-get install -y mumble-server \
  && mkdir /mumble && chown 1000 /mumble
COPY mumble-server.ini /config/mumble-server.ini
EXPOSE 64738/udp

USER mumble
ENTRYPOINT ["/usr/sbin/murmurd","-fg","-ini","/config/mumble-server.ini"]
