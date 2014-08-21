FROM debian:wheezy
MAINTAINER Vincenzo Petrucci (nahime)
ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://packages.dotdeb.org wheezy all" > /etc/apt/sources.list.d/dotdeb.list && \
	echo "deb http://packages.dotdeb.org wheezy-php55 all" >> /etc/apt/sources.list.d/dotdeb.list && \
	apt-get --allow-unauthenticated update && \
	apt-get clean autoclean && apt-get autoremove -y
CMD true
