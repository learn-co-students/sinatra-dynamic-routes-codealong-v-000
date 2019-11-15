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
    "Goodbye, #{params[:name]}."
  end 
  
  get "/multiply/:number1/:number2" do 
    @num1 = params[:number1]
   @num1 = @num1.to_i
    @num2 = params[:number2]
  @num2 = @num2.to_i
    @total = (@num1 * @num2)
    @total
    "#{@total}"
  end 
end