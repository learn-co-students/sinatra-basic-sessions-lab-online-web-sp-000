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
        @sessions = session
        item = params["item"]
        @sessions[:item] = item
    end

end