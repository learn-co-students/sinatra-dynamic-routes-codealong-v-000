require_relative 'config/environment'

class App < Sinatra::Base
   # This is a sample static route.
   get '/hello' do
      'Hello World!'
   end

   # This is a sample dynamic route.
   get '/hello/:name' do
      @user_name = params[:name]
      "Hello #{@user_name}!"
   end

   get '/goodbye/:name' do
      @user_name = params[:name]
      "Goodbye, #{@user_name}."
   end

   get '/multiply/:n1/:n2' do
      @n1 = params[:n1].to_i
      @n2 = params[:n2].to_i
      (@n1 * @n2).to_s
   end
end
