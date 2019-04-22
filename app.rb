require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "17f87db21e4b43e6996735eeac59fb35462d21e20444f68049565c99ee957d73306cead439a84a9361d5a096a38ebdfa72a8ec90bda7a79890a2688bb69d2f2a"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session['item'] = params['item']

    erb :checkout
  end
end
