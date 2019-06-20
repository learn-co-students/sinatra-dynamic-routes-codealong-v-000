require 'pry'
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
    @goodbye_name = params[:name]
    "Goodbye, #{@goodbye_name}."
  end

  get "/multiply/:number1/:number2" do
    
    @multiple = params[:number1].to_i * params[:number2].to_i

    "#{@multiple}"
  end

  # Code your final two routes here:

end
