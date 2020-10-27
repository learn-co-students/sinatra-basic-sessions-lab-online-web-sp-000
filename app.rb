require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :sessions_secret, "kVTqGDxlODlw1GMhhNfZufXIFajnFKcnNQkRCDEGSLzDg111B8Yel3myYk8yAhZ0"
  end 
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
  end
  
end