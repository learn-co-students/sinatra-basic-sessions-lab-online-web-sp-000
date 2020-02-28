require_relative 'config/environment'

class App < Sinatra::Base
  configure() {enable :sessions; set :session_secret, "secret"}
  get('/') {erb :index}
  post('/checkout') {session[:item] = params[:item]; erb :checkout}
end
