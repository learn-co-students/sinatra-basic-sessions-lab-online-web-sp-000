require_relative 'config/environment'
require 'sysrandom/securerandom'

class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "b389500f62c8be377d29eac8f75bc4a5900f19100d5fc96c40392c0ffb6f3453d38fd9fc2adb9b061cf18546c7e3d618e8ec22c28f1f721ccd41db2db8c56b63"
    # ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) } ##=> (I dont know how to use this yet!!!!) <=##
  end
  
  get "/" do
    erb :index
  end
    
  post "/checkout" do
    session[:item] = params[:item]
  end
  
end