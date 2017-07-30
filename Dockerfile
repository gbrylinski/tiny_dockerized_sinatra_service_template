FROM iron/ruby

WORKDIR /app
EXPOSE 4567

ADD . /app
LABEL SERVICE_NAME="SomeService"
LABEL SERVICE_TAGS="v0.0.1"

ENTRYPOINT ["ruby", "service.rb"]
