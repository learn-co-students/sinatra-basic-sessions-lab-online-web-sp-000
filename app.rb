require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "milos"
    end

    get '/' do
        erb :index
    end
    post '/checkout' do
        session[:item] = params[:item]

        @item = session[:item]
        erb :checkout
    end
end
#sessions are mechanism to store info as cookies. they are manipulated as hash like system. session is in rack level. 