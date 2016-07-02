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

  get '/medicines/:id' do
    @medicine = all_the_medicines.select do |medicine|
      medicine.id == params[:id]
    end.first
    erb :'/medicines/show.html'
  end

  get '/goodbye/:name' do
    @person_name = params[:name]
    "Goodbye #{@person_name}"
  end

  get '/multiply/:number1/:number2' do
    @value_multiplied = params[:number1].to_i * params[:number2].to_i
    "#{@value_multiplied}"
  end

end
