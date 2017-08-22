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

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    @multipliaction_result  = params[:num1].to_i * params[:num2].to_i
    "Multiplication Result of #{params[:num1]} and #{params[:num2]} is #{@multipliaction_result}"
  end
end
