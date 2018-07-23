require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @name = params[:name]
    erb :goodbye
  end

  # Code your final two routes here:
	get "/multiply/:x/:y" do
		puts params
		var_x = params["x"]
		var_y = params["y"]
		@mult = var_x.to_f * var_y.to_f
		erb :multiply
	end
end
