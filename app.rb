require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end

  get '/hello/:name' do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye #{@name}"
  end

  get '/multiply/:num_one/:num_two' do
    "#{params[:num_one].to_i * params[:num_two].to_i}"
  end

end