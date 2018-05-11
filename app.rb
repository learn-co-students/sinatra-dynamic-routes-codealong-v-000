require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/' do
    redirect '/hello'
  end

  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.capitalize}!"
  end

  # Code your final two routes here:

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    @x = params[:num1]; @y = params[:num2]
    @result = (@x.to_i * @y.to_i)
    "Result is #{@result}"
  end
end
