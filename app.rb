require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, 'e5a3b5031c7d1c5fedc24aae1d4d193892639d9c64a7f4ed637bb227ff27485be74538bc8632a582119d5af2b87736d51e2c45f071b9b9a71e6677ef90c34011'
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