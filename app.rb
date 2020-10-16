require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "8409234u1ijlku4319843294hkj"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do 
    session[:item] = params[:item]
    @session = session
    @item = @session[:item]
    erb :index
  end

end