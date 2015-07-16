FROM ruby:2.0.0-p645

RUN apt-get update && apt-get install -qy nodejs npm mysql-client vim

ENV RAILS_VERSION 3.2.22
RUN gem install rails --version "$RAILS_VERSION"

EXPOSE 3000
ENV PORT=3000

ENV APP_HOME /college_professors
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile $APP_HOME/
ADD Gemfile.lock $APP_HOME/
RUN bundle install

ADD . $APP_HOME
