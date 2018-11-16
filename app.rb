require_relative 'config/environment'

configure do
  enable :sessions
end

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
  end
end
