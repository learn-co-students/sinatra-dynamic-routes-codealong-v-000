require_relative 'config/environment'

require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    # raise params.inspect
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    erb :goodbye
  end

  get '/multiply/:num1/:num2' do
    @num_1 = params[:num1].to_i
    @num_2 = params[:num2].to_i
    erb :multiply
  end
end
