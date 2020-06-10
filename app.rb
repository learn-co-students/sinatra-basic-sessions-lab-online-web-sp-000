require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end 

    post '/checkout' do 
        @session = session
        item = params[:item]
        @session[:item] = item
    end 

    configure do
        enable :sessions
        set :session_secret, "secret"
    end

end