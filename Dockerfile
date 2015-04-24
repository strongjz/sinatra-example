FROM ruby:2.0.0-p645

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN git clone https://github.com/Honey-Badger-Cloud/sinatra-example /usr/src/app
RUN bundle install

EXPOSE 4567

CMD ["bundle","exec","ruby","index.rb"]
