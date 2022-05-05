# FROM ruby:2.6.6

# RUN apt-get update -qq && \
#     apt-get install -y build-essential \
#     libpq-dev \
#     nodejs \
#     && rm -rf /var/lib/apt/lists/*

# RUN mkdir /app
# ENV APP_ROOT /app
# WORKDIR $APP_ROOT

# ADD ./Gemfile $APP_ROOT/Gemfile
# ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# RUN gem install bundler:2.3.6 && \
#     bundle install


# FROM ruby:2.6.6


# # 以下の記述を追加
# ENV RAILS_ENV=production

# RUN apt-get update -qq && \
#     apt-get install -y build-essential \
#     libpq-dev \
#     nodejs \
#     && rm -rf /var/lib/apt/lists/*

# RUN mkdir /app
# WORKDIR /app

# ADD . /app
# RUN mkdir -p tmp/sockets
# RUN mkdir -p tmp/pids

# COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /app/Gemfile.lock

# RUN gem install bundler:2.3.6 && \
#     bundle install

# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]

# # 以下の記述があることでnginxから見ることができる
# VOLUME /app/public
# VOLUME /app/tmp

# CMD bash -c "rm -f tmp/pids/server.pid && bundle exec puma -C config/puma.rb"

FROM ruby:2.6.6

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN apt-get update -qq && \
    apt-get install -y build-essential \
    libpq-dev \
    sudo \
    nginx && \
    gem install bundler:2.0.1

RUN bundle install

ADD . /app
RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids

# nginx
RUN groupadd nginx
RUN useradd -g nginx nginx
ADD nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

RUN chmod +x /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]