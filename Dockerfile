FROM ruby:2.4.1
RUN echo "deb http://deb.debian.org/debian stretch main" > /etc/apt/sources.list
RUN apt-get update && apt-get install libmysqlclient-dev git libncurses5-dev libreadline-dev libssl-dev libyaml-dev libmysqlclient-dev libsqlite3-dev libxml2-dev libxslt-dev libsasl2-dev libsasl2-2 libv8-dev wget libssl-dev libffi-dev imagemagick libmagickwand-dev xvfb phantomjs -y 
RUN version="7.7.4" && wget https://nodejs.org/dist/v${version}/node-v${version}-linux-x64.tar.xz  && tar xvf node-v${version}-linux-x64.tar.xz  && rm -rf node*xz && cd node-v${version}-linux-x64 && cp -r * /usr/local/ && cd ../ && rm -rf node* && npm install -g npm
