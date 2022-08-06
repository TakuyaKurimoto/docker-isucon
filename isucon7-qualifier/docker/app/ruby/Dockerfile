FROM ruby:2.4.2

COPY . /home/isucon/isubata
WORKDIR /home/isucon/isubata/webapp/ruby
RUN bundle install

EXPOSE 5000

ENTRYPOINT ["bundle", "exec", "puma", "-p", "5000"]
CMD ["-t", "10"]
