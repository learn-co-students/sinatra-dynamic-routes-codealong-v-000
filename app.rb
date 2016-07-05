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
    "Goodbye #{@user_name}!"
  end

  get "/multiply/:num1/:num2" do
    @first_number = params[:num1].to_i
    @second_number = params[:num2].to_i
    @product = @first_number * @second_number
    "#{@product}"
  end


end
