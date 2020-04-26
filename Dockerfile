FROM ruby:2.3
WORKDIR /usr/src/app
COPY Gemfile ./
RUN bundle install
COPY . .
RUN chmod +x -R bin/
RUN bin/rake db:migrate
RUN bin/rake db:seed
EXPOSE 3000
CMD bin/rails server -b 0.0.0.0 -p 3000
