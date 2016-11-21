require_relative 'config/environment'
require "pry"
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello/' do
    "Hello World!"
  end



  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  get '/goodbye/:name' do
    @name=params[:name]
    "Goodbye #{@name}"
  end

  get '/multiply/:num1/:num2' do
  @n1 = params[:num1].to_i
  @n2 = params[:num2].to_i

  @n= @n1 * @n2
  binding.pry
  "#{@n}"
end
end
