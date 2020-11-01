require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessons
        set :session_secret, "superdupersecret"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end

end