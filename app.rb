require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end

  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye' do
    "Goodbye!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_f
    @num2 = params[:num2].to_f

    "#{@num1 * @num2}"
  end

end