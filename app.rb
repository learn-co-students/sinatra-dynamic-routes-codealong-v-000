require_relative 'config/environment'

class App < Sinatra::Base

  # This is a static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."  
  end

  get '/multiply/:num1/:num2' do
      n1 = params[:num1].to_i
      n2 = params[:num2].to_i

      (n1 * n2).to_s
  end
end