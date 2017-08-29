require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end

  get '/hello/:name' do
    @user_name = params[:user_name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:user_name' do
    @user_name = params[:user_name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

end
