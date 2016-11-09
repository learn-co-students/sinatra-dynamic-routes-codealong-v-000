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
  	"Goodbye #{@user_name}!"
  end

  get "/multiply/:numb1/:numb2" do
  	@numb1 = params[:numb1]
  	@numb2 = params[:numb2]
  	@product = @numb1.to_i * @numb2.to_i
  	"#{@product}"
  end
end