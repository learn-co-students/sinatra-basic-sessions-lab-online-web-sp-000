require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    @sessions = sessions
    item = params["item"]
    @sessions[:item] = item
  end
end
