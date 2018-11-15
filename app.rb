require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "supersecretpa$$word"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :show
  end

end
