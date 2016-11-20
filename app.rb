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
    @user = params[:name]
    "Goodbye #{@user}"
  end
  
  get "/multiply/:num1/:num2" do 
    @first = params[:num1]
    @second = params[:num2]
    x = @first.to_i * @second.to_i
    x.to_s


  end


end