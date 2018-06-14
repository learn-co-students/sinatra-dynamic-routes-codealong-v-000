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

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
  # @multiple = params.select do |multiply|
  #   multiple.num1 == params[:num1]
  #   multiple.num2 == params[:num2]
  # end.first
  # erb :'/multiply/show.html'
  @multiple1 = params[:num1]
  @multiple2 = params[:num2]
  "#{@multiple1.to_i * @multiple2.to_i}"
end


end
