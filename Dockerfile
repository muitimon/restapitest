FROM ruby:latest

WORKDIR /usr/src/app

COPY config.ru config.ru
COPY hello.rb hello.rb


RUN gem install webrick
RUN gem install grape
RUN gem install rack

CMD rackup