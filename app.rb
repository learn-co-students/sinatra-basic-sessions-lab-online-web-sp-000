require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "flatiron"
  end

  get '/' do
    erb :index          #renders a form "index"
  end

  post '/checkout' do
    session[:item] = params[:item]          #sets params in the session hash
    @session = session                  #session hash stored in instance variable, that we can access in views
    erb :checkout
  end


end
