FROM ruby:2.7.1
ENV LANG C.UTF-8
ENV APP_ROOT /usr/src
WORKDIR $APP_ROOT

RUN apt-get update && \
    apt-get install nodejs npm -y && \
    npm uninstall yarn -g && \
    npm install yarn -g -y