FROM node

RUN apt-get update && apt-get install -y unzip libaio1
RUN rm -rf /var/lib/apt/lists/*

ADD instantclient-basic-linux.x64-12.1.0.2.0.zip /tmp/
ADD instantclient-sdk-linux.x64-12.1.0.2.0.zip /tmp/

RUN unzip -q /tmp/instantclient-basic-linux.x64-12.1.0.2.0.zip -d /opt/oracle/ \
&& unzip -q /tmp/instantclient-sdk-linux.x64-12.1.0.2.0.zip -d /opt/oracle/ \
&& mv /opt/oracle/instantclient_12_1 /opt/oracle/instantclient \
&& ln -s /opt/oracle/instantclient/libclntsh.so.12.1 /opt/oracle/instantclient/libclntsh.so\
&& rm /tmp/instantclient-*

ENV LD_LIBRARY_PATH /opt/oracle/instantclient
