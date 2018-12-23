require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :sessions_secret, "hello stalker"
  end

  get '/' do
    erb :index #when / hits, we're taken to :index view
  end

  post '/checkout' do
    session[:item] = params[:item]
    #sessoin[:item] is from what learn.co told is to call the key
    #params[:item] is from what we named it in the index.erb
    #ake the params from the form and add it to the session hash
    @session = session
    erb :checkout
  end

end
