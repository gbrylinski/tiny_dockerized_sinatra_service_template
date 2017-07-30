#!/bin/bash

# this step mounts current directory as an /app and installs and builds all gems inside
# it under `bundle` directory. This way we don't embed development gems inside result
# container.
docker run --rm -it -v $PWD:/app -w /app iron/ruby:dev bundle install --standalone --clean

# and here we build our target image. The only thing needed here is the name for the
# image.
docker build -t microservice .

# to test without building use this little piggy:
# docker run -it --rm -v $PWD:/app -w /app -p 3000:3000 iron/ruby ruby service.rb
