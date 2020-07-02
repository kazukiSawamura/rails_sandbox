FROM postgres:12.3

RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8

#RUN apt-get update -y && \
#    apt-get install -y -V software-properties-common lsb-release && \
#    add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe" && \
#    add-apt-repository "deb http://security.ubuntu.com/ubuntu $(lsb_release --short --codename)-security main restricted" && \
#    add-apt-repository -y ppa:groonga/ppa && \
#    apt-get update -y && \
#    apt-get install -y -V mysql-server-mroonga && \
#    apt-get install -y -V groonga-tokenizer-mecab