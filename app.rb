require_relative 'config/environment'

class App < Sinatra::Base
    
    configure do
        enable :sessions
        set :session_secret, "p4N8hzPwYkwu9CeZ4kpMarD7XXSVXg4CWQ54VF8qV6PFZ3D9FJ"
    end

    get '/' do  
        erb :index
    end

    post '/checkout' do
        @item = params[:item]
        @session = session
        @session[:item] = @item
        erb :checkout
    end

end
