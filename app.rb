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

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  get '/multiply/:a/:b' do
    @num_1, @num_2 = *params[:captures].map{ |elem| elem.to_i }
    #binding.pry
    "#{@num_1 * @num_2}"
  end



end
