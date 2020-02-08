require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "item"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    # raise params.inspect
    session[:item] = params[:item]
    @session = session
    erb :item
  end
end
