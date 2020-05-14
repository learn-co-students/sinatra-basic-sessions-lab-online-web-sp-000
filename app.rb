require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions        
        set :session_secret, "cart"
    end

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]        
        @session = session        
        redirect to '/checkout'
    end

    get '/checkout' do
        @session = session
        erb :show
    end

end