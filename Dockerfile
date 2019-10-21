FROM ruby:2.5

RUN mkdir /backend-rover-challenge
WORKDIR /backend-rover-challenge
COPY Gemfile /backend-rover-challenge/Gemfile
COPY Gemfile.lock /backend-rover-challenge/Gemfile.lock
RUN bundle install
COPY . /backend-rover-challenge

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
