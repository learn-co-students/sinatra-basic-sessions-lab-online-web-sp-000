require_relative 'config/environment'
require 'securerandom'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, secret = SecureRandom.hex(64)    # DON'T DO THIS!
    end  

    get "/" do       
        erb :index
    end

    post "/checkout" do
        session[:item] = params[:item]
        @item = sessions[:item]
        erb :checkout
    end
end