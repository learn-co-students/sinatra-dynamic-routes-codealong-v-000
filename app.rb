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


  #we set the multiple params separtated by "/" in the route
  get '/multiply/:num1/:num2' do
    #Set instance varibles to the routes that were stated
    #in this case they are @num1 and @num2
    @num1 = params[:num1]
    @num2 = params[:num2]

    #Here is the tricky part.
    #When the numbers get called they come back as strings, so we need to make them into integers using 'to_i' method.
    #If we do not, an error will come back when we try to run it in the browser (TypeError :no implicit conversion of String into Integer)
    #Create a variable amd assign it to the the product of the 2 numbers
    product = @num1.to_i * @num2.to_i

    #display the product in the browser
    "#{product}"
  end

end
