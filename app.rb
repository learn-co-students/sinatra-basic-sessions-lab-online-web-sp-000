require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "87827cb2ab34ec45aff97fb396dcfe34e6be4a2564c8047ffacd3fa8e519f0cf19a277feefc59a45c02594ac51d83362c1921a38168575ea8fb65c3d8485a232"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    session[:item] = params[:item]
    @session = session

    erb :checkout
  end


end
