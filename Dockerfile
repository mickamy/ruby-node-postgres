FROM ruby:2.6.5-slim-buster
ENV LANG C.UTF-8

RUN \
  apt-get update -qq && \
  apt-get install -y build-essential libpq-dev postgresql-client nodejs yarn

RUN \
  echo 'gem: --no-rdoc --no-ri' >> /.gemrc && \
  gem install bundler
