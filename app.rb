require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "1937"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    list = <<-LIST
    Here is your shopping cart:
    #{@item}
    LIST

    "#{list}"


    erb :checkout
  end

end
