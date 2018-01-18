FROM docker.io/kalilinux/kali-linux-docker

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
  zmap
RUN apt-get update && apt-get upgrade -y
RUN wget http://www.ipdeny.com/ipblocks/data/countries/us.zone
