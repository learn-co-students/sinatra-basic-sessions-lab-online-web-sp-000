require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    item_selected = params[:item]
    @session = session
    @session[:item] = item_selected
  end

end
