require_relative 'config/environment'
configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/checkout' do
  @sessions = session
  item = params["item"]
  @sessions[:item] = item
end


end
