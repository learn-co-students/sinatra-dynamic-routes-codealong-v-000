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
    "Goodbye #{@user_name}"
  end

  get '/multiply/:num1/:num2' do
    @num_one = params[:num1]
    @num_two = params[:num2]
    "#{@num_one.to_i * @num_two.to_i}"
  end
end
