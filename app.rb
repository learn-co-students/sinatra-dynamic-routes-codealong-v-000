require_relative 'config/environment'

class App < Sinatra::Base
  #controller
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  #params is a hash
  get "/hello/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}!"
  end

  get "multiply/:num1/:num2"
  @numbers = params[:number1][:number2]
  "#{@numbers}"
end
