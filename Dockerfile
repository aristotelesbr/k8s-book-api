FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /book-api
WORKDIR /book-api
COPY Gemfile /book-api/Gemfile
COPY Gemfile.lock /book-api/Gemfile.lock
RUN bundle install
COPY . /book-api
