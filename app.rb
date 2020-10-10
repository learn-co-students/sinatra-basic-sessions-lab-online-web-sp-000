require_relative 'config/environment'



class App < Sinatra::Base

    enable :sessions
    set :session_secret, "tacos"
    
    get '/' do
        erb :index
    end

    post '/checkout' do
        @session = session
        @session[:item] = params[:item]
    end

end