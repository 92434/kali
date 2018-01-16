FROM kalilinux/kali-linux-docker

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

RUN apt-get -yqq update
RUN apt-get -yqq dist-upgrade
RUN apt-get install kali-linux-all
RUN apt-get clean

CMD ["bash"]
