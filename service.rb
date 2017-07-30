require_relative 'bundle/bundler/setup'

require 'sinatra/base'
require 'sinatra/json'
require 'roar'

require_relative 'lib/service_api'

ServiceApi.run!
