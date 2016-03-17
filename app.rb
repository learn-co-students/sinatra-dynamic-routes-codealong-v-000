require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    "Hello #{user_name}!"
  end

  get "/goodbye/:name" do
    "Goodbye #{user_name}"
  end

  get '/multiply/:num1/:num2' do
    # binding.pry
    (num1 * num2).to_s
  end

  private
  def user_name
    @user_name ||= params[:name]
  end

  def num1
    @num1 ||= params[:num1].to_i
  end

  def num2
    @num2 ||= params[:num2].to_i
  end
end
