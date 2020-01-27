require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, 'flatiron'
    end

    #index.erb should contain a form with text field. Here, the user will enter an item to purchase. The form should post to the action /checkout.
   
    get '/' do
        erb :index
    end

    post '/checkout' do
        #The controller action /checkout, should take the params from the form and add it to the session hash.
        #The key should be item and the value should be the item the user entered to the purchase. 
        session[:item] = params[:item]
        #Store the session hash in an instance variable that you can access in the views.
        @session = session
        erb :checkout
    end

end