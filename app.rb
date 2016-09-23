require_relative 'config/environment'

class App < Sinatra::Base

  get '/multiply/:num_1/:num_2' do
    @product = params[:num_1].to_i * params[:num_2].to_i
    "#{@product}"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

end
