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
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:number1/:number2" do
    @no1 = params[:number1]
    @no2 = params[:number2]
    "#{@no1.to_i * @no2.to_i}"
  end

end
