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
    @num1 = params[:num1].to_f
    @num2 = params[:num2].to_f
    @num1*@num2 % 1 == 0 ? @product = (@num1*@num2).to_i : @product = @num1*@num2
    "#{@product}"
  end

end
