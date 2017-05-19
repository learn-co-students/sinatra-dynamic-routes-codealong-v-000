require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name/:age" do
    @user_name = params[:name]
    @age = params[:age]
    "Hello #{@user_name}! You are #{@age} years old."
  end

  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye #{@name}"
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1 * @num2}"
  end

end
