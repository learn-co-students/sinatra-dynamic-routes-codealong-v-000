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

  get "/multiply/:num1/:num2" do
    @solution = params[:num1].to_i * params[:num2].to_i
    "#{@solution}"
  end

end

 
# medicines_controller.rb
# get '/medicines/:id' do
#   @medicine = all_the_medicines.select do |medicine|
#     medicine.id == params[:id]
#   end.first
#   erb :'/medicines/show.html'
# end

# describe 'GET /multiply/:num1/:num2' do
#   it 'sends a 200 status code' do
#     get '/multiply/5/5'
#     expect(last_response.status).to eq(200)
#   end

#   it 'displays the product of the two numbers in the route' do
#     get '/multiply/6/6'
#     expect(last_response.body).to include("36")
#   end

#   it 'is not hard-coded' do
#     get '/multiply/7/7'
#     expect(last_response.body).to include("49")
#     expect(last_response.body).to_not include("36")
#   end
# end
# end