FROM ruby:2.0.0-p645

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD RUN git clone https://github.com/Honey-Badger-Cloud/sinatra-example /usr/src/app
ONBUILD COPY Gemfile /usr/src/app/
ONBUILD COPY Gemfile.lock /usr/src/app/
ONBUILD RUN bundle install

ONBUILD COPY . /usr/src/app
EXPOSE 4567

CMD ["bundle","exec","ruby","index.rb"]
