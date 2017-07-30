# this class represents endpoints provided by the service. Ideally
# it should be small and fit into this file. But, sometimes implementations
# is slightly bigger so feel free to add some code into `lib` and just
# `require` it from top level `service.rb`.
class ServiceApi < Sinatra::Base
  configure do
    set :port, ENV['SESSION_PORT'] || '4567'
    set :bind, ENV['SESSION_BIND'] || '0.0.0.0'
    set :environment, ENV['APP_ENV'] || 'production'
  end

  get '/status' do
    json(status: 'OK')
  end

  # and here come your endpoints...
end
