FROM ruby:3.2.2 as development

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN alias 'rails s'='rails s -b 0.0.0.0'

WORKDIR /opt

COPY Gemfile* ./

RUN bundle install

ENV RAILS_ENV=development

######################################################

FROM development as test

ENV RAILS_ENV=test


######################################################

FROM development as production

ENV RAILS_ENV=production
