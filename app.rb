require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end

  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @persons_name = params[:name]
    "Goodbye, #{@persons_name}."
  end

  get '/multiply/:num1/:num2' do
    "#{(params[:num1].to_i * params[:num2].to_i)}"
  end

end