FROM ruby:2.7.4
WORKDIR /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
EXPOSE 3000
CMD ["ruby", "run", "start"]
