FROM ubuntu

RUN apt update && apt-get install ruby -y
RUN gem install 'colorize'

COPY ./app /app

WORKDIR "/app"
