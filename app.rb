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
  	@username = params[:name]
  	"Goodbye #{@username}"
  end

  get "/multiply/:x/:y" do
  	x = params[:x].to_i
  	y = params[:y].to_i
  	@z = x*y
  	"#{@z}"
  end
end