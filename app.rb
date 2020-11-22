require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, 'd94b83161b215c7d52100479f37f1d4e28977576fab1ea2f37d5ba3cb24f99afab8ae2d209ec7bd5499c34408bb54528626b09c16d7292eebab22a1a162f0ce8'
    end
    
    
    
    get "/" do
        erb :index
    end

    post "/checkout" do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end

end