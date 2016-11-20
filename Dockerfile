FROM ubuntu:16.04

ENV ALLOW_OVERRIDE **False**
ENV TERM xterm

# Base packages
RUN apt-get update
RUN apt-get install --no-install-recommends -y build-essential curl wget

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs npm

# Yarn
RUN wget --no-check-certificate --quiet -O - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install yarn
