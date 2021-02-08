require_relative 'config/environment'
require 'securerandom'

configure do 
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') {SecureRandom.hex(64)}
end 




class App < Sinatra::Base

    get '/' do

    erb :index 
    end 

    post '/checkout' do 
        @session = session 
        item = params["item"]
        @session[:item] = item 
        erb :checkout
        raise params.inspect
    end 

end