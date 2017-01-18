require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

    get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  get "/multiply/:num1/:num2" do
        num1*num2 = params[:number]
        end
end
