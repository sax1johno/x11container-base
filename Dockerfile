FROM ubuntu:latest

LABEL 	name="X11Container" \
	author="sax1johno@gmail.com" \
	summary="An ubuntu container which uses XVFB and X11vnc to run GUI applications in Docker" \
	version="v1"

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=1:0

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
	libx11-6 libx11-dev dbus-x11 x11-utils xvfb x11vnc fluxbox csh

COPY ./start.sh /start.sh

EXPOSE 22
EXPOSE 5900
EXPOSE 5901
EXPOSE 6080

CMD ["/start.sh"]	