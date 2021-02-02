FROM ruby:2.5.1

RUN apt-get update -qq && apt-get -y install \
    build-essential \
    libpq-dev \
    nodejs \
    # openssl \
    # libssl-dev \
    mysql-client

# COPY config.ru config.ru
# COPY hello.rb hello.rb

WORKDIR /home/app

COPY Gemfile /home/app/Gemfile
COPY Gemfile.lock /home/app/Gemfile.lock

# RUN gem install webrick
# RUN gem install grape
# RUN gem install rack

# RUN bundle config --local build.mysql2 "--with-cppflags=-I/usr/local/opt/openssl@1.1/include --with-ldflags=-L/usr/local/opt/openssl@1.1/lib"

# RUN gem install mysql2 -v '0.5.2' --source 'https://rubygems.org/' -- --with-cppflags=-I/usr/local/opt/openssl/include --with-ldflags=-L/usr/local/opt/openssl/lib
# RUN bundle install --path=vendor/bundle
RUN gem install bundler
RUN bundle install

# CMD rackup --host 0.0.0.0