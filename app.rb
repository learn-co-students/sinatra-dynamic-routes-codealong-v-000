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
  "Goodbye #{@user_name}"
   end

  get "/multiply/:number1/:number2" do
    @first = params[:number1]
    @second = params[:number2]
    @number = (@first.to_i * @second.to_i)
    @number=@number.to_s
    @number
  end

end
