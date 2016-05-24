require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    response.status = 200
    "index page"
  end

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
    @num_1 = params[:num1].to_f
    @num_2 = params[:num2].to_f
    "#{@num_1 * @num_2}"
  end
end
