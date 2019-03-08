FROM ruby:2.6-alpine

LABEL maintainer="Vladislav Lisovskii <lisovskyvlad@gmail.com>"

ENV APP_HOME=/blog

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --upgrade gcc libc-dev make g++ \
    && rm -rf /var/cache/apk/*

RUN mkdir -p $APP_HOME

WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/

RUN bundle install -j4

COPY . $APP_HOME
