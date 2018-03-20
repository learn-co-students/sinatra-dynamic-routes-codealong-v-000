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

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  # Code your final two routes here:

  get '/multiply/:one/:two' do
    number1 = params[:one].to_f
    number2 = params[:two].to_f
    "#{number1 * number2}"
  end

end
