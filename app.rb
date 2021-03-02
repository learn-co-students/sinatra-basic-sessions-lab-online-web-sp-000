require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "737a34db1a97702d1cb74e3d8c902209c081e4908b1cd6288e630aed6743e801c74b2ea583cb0302ca33f810dbf4886ee8a1e305c52256e308d3e4ab4af47502"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @session = session
        session['item'] = params[:item]
        erb :results
    end
end