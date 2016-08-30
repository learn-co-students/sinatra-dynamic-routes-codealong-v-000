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

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  # This is a sample dynamic route.
  get "/multiply/:num1/:num2" do
    @number1 = params[:num1].to_i
    @number2 = params[:num2].to_i
    @number3 = @number1 * @number2
    "#{@number3}"
  end

end
