FROM ruby:2.6.6-alpine
ENV LANG C.UTF-8

RUN \
  apk --update add postgresql-client nodejs yarn

RUN \
  echo 'gem: --no-rdoc --no-ri' >> /.gemrc && \
  gem install bundler
