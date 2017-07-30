# Tiny Dockerized Sinatra Service

This little thing is a template for a Sinatra microservice packed into Docker image. The
biggest advantage of it is its size - around 60MB what is quite unusual for Ruby based
images.

It is based on excellent article by Travis Reeder:

[How to Create a Tiny Docker Image for your Ruby App](https://medium.com/iron-io-blog/how-to-create-a-tiny-docker-image-for-your-ruby-app-f8d7d622d80b)

The article is a bit outdated because step 1 has changed - it's now supposed to be done
with the `:dev` version what's described in `iron/ruby` image description btw. I highly
recommend going through idea of `iron/base`, `iron/ruby` & `iron/ruby:dev` images.

I will try to explain idea behing that for lazy ones (-;

## Template structure

Structure is rather common for any Sinatra or Ruby simple app in general. So we have a
main `service.rb` which acts an entry point for our code. It looks like this:

```ruby
require_relative 'bundle/bundler/setup'

require 'sinatra/base'
require 'sinatra/json'
require 'roar'

require_relative 'lib/service_api'

ServiceApi.run!
```

what is happening here is:

- we first load bundled gems with `require_relative 'bundle/bundler/setup'` line. This file
is generated during `bundle install` and reflects gems we have in our application. If any
new gem is added or removed it needs to be rebuilt.
- next we load other elements we will use: `sinatra/base`, `sinatra/json` & `roar`
- now we load our "worker" class which is a `Sinatra::Base` instance doing the dirty work
- and finally we start it with `ServiceApi.run!`. If you plan to change name of the worker
  class don't remember to adjust this place

## Adding your code

soon

## Building docker image

soon

## Running the container

soon
