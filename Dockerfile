FROM docker.io/kalilinux/kali-linux-docker

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

RUN apt-get -yqq update
RUN apt-get -y install zmap
RUN pwd
RUN wget http://www.ipdeny.com/ipblocks/data/countries/us.zone

CMD ["cat","*.zone","|","zmap","-p","1080","-B","400M","-o","us.1080"]
