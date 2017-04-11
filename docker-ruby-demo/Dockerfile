FROM ruby:2.4.0
ADD entrypoint.sh /entrypoint.sh
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && chmod +x /entrypoint.sh;
WORKDIR /myapp
ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/bin/bash"]