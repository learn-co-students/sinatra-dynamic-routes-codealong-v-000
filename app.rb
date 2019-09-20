require_relative 'config/environment'

class App < Sinatra::Base
#===========================routes=========================== 
  # index
  get '/' do
    erb :index
  end
  
  # This is a sample static route.
  get '/hello' do
    erb :hello
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    erb :hello_dynamic
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    erb :goodbye_dynamic
  end
  
  get "/multiply/:num1/:num2" do
    erb :multiply_dynamic
  end
#============================================================ 
end