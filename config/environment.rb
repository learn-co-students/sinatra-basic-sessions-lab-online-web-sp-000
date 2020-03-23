ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'

configure do
  enable :sessions
  set :session_secret, "secret"
end
