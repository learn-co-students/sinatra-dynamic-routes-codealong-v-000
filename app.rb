  require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
     "Hello World"
  end

  get "/goodbye/:name" do
    person_name = params[:name]
    "Goodbye #{person_name}"
  end

  get "/multiply/:num1/:num2" do
    num1 = params[:num1]
    num2 = params[:num2]
    "#{num1.to_i * num2.to_i}"
  end
end
