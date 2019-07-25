require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end

  get "/hello/:name" do
    user_name = params[:name]
    "Hello #{user_name}!"
  end

  get "/goodbye/:name" do
    name = params[:name]
    "Goodbye, #{name}."
  end

  get '/multiply/:number1/:number2' do
    "#{params[:number1].to_i * params[:number2].to_i}"
  end

end
