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

  # Code your final two routes here:

  get '/goodbye/:name' do
  @goodbye = params[:name]
    "Goodbye, #{@goodbye}."
  end


  get '/multiply/:num1/:num2' do
  @spot_1 = params[:num1].to_i # we needed to change to interger
  @spot_2 = params[:num2].to_i # we needed to change to interger
   "#{@spot_1 * @spot_2}"  #=> 25...
  end

end
