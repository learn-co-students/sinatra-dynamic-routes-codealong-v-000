
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

  get '/goodbye/:name' do
  	status 200 
  	@user_name = params[:name]
  	"Goodbye #{@user_name}"
  end 

  get '/multiply/:num1/:num2' do
  	status 200
  	@num_1 = params[:num1]
  	@num_2 = params[:num2]
  	m = @num_1.to_i * @num_2.to_i
  	m.to_s
  end


end