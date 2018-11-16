FROM ruby:2.5-stretch

ENV RAILS_ENV development
ENV APP_HOME /myapp

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN bundle config force_ruby_platform true \
    && gem update bundler \
    && bundle config build.nokogiri --use-system-libraries \
    && bundle install --jobs 3

ADD . $APP_HOME
