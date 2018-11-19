require_relative 'config/environment'

class App < Sinatra::Base

	configure do
		enable :sessions
		set :session_secret, "67739624a7153b317530f398aa6ebb95e57450466854e62819c62ba1562b4356d68176ffdce5c32ba246f3b8cc459190832435897fe0f99a8dbb72324fbf03ea"
	end

	get '/' do
		erb :index
	end

	post '/checkout' do
		@session = session
		@session[:item] = params[:item]
		erb :checkout
	end

end
