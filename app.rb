require_relative 'config/environment'

class App < Sinatra::Base

  configure do
      enable :sessions
    end

    get '/' do
      erb :'../views/index'
    end

    post '/checkout' do
      session[:item] = params[:item]
      @session = session
      @item = params[:item]

      erb :'../views/checkout'
    end
end
