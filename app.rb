require_relative 'config/environment'

# Make sure you enable sessions in app.rb and set a session_secret.

# Set up a controller action that responds to a GET request to the route '/'. You'll want this action to render an erb file,index.erb.

# index.erb should contain a form with text field. Here, the user will enter an item to purchase. The form should post to the action /checkout.

# The controller action /checkout, should take the params from the form and add it to the session hash. The key should be item and the value should be the item the user entered to the purchase. Make sure to store the session hash in an instance variable that you can access in the views.

# In the view rendered by the controller action, display the item the user entered to purchase.

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end
  
  post '/checkout' do
    session["item"] = params[:item]
    @session = session
    
    "#{params[:item]}"
  end
  
end