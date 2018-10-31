require_relative 'config/environment'

class App < Sinatra::Base

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_f * params[:num2].to_f
    "#{@product}"
  end
end