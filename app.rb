require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "clemson"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end

end