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

  # Code your final two routes here:

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."

  end 

  get "/multiply/:num1/:num2" do
    @new_num1 = params[:num1]
    @new_num2 = params[:num2]
    @new_num3 = @new_num1.to_i * @new_num2.to_i
  
    "Product of #{@new_num1} and #{@new_num2} is equal to #{@new_num3}"
  end   
end