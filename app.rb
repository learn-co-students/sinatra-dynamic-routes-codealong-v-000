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

  get "/googbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  get "/multiply/:num1/:num2" do
    @sum = params[:num1] * params[:num2]
    @sum
  end
end
