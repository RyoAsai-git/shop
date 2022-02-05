FROM ruby:2.7.1

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile

RUN apt-get update -qq && \
    apt-get install -y build-essential \
    libpq-dev \
    sudo \
    && gem install bundler:2.2.32

RUN bundle install

ADD . /appå