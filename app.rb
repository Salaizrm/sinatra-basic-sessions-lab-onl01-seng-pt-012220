require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "1937"
  end

  get '/' do
    erb :index
  end

end
