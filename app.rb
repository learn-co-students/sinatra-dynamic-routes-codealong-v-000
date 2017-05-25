require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do 
  	"Goodbye #{params[:name]}!"
  end

  get "/multiply/:param1/:param2" do 
  	"#{params[:param1].to_i * params[:param2].to_i}"
  end


end