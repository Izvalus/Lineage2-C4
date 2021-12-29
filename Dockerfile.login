FROM ubuntu:xenial

RUN apt-get update \
    && apt-get install -y curl \
    && curl -O https://ftp.zhirov.website/program/Games/Lineage_2/server/Docker/x86-64/jre-8u311-linux-x64.tar.gz \
    && tar xfz jre-8u311-linux-x64.tar.gz -C /opt/ \
    && rm jre-8u311-linux-x64.tar.gz \
    && curl -O https://ftp.zhirov.website/program/Games/Lineage_2/server/Docker/x86-64/login.tar.gz \
    && tar xfz login.tar.gz -C /opt/ \
    && rm login.tar.gz

ENV JAVA_HOME /opt/jre1.8.0_311
ENV PATH $PATH:$JAVA_HOME/bin

WORKDIR /opt/login
CMD ["sh", "ls_loop.sh"]
