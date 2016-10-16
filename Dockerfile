FROM node:latest

RUN mkdir /usr/src/app /usr/phantom/

COPY phantomjs-2.1.1-linux-x86_64.tar.bz2 /usr/phantom/

RUN cd /usr/phantom/ && tar xjvf phantomjs-2.1.1-linux-x86_64.tar.bz2
ENV PATH=$PATH:/usr/phantom/phantomjs-2.1.1-linux-x86_64/bin

VOLUME /usr/src/app/pages
VOLUME /usr/src/app/requests
WORKDIR /usr/src/app

COPY test.js /usr/src/app/
CMD phantomjs test.js
