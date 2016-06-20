require_relative 'config/environment'

class App < Sinatra::Base
  all_the_medicines = [
  <Medicine:0x007fb739b1af88 @id=1, @name="penicillin" @group="antibiotic">,
  <Medicine:0x007fb739b1af88 @id=2, @name="advil" @group="anti-inflammatory">,
  <Medicine:0x007fb739b1af88 @id=3, @name="benadryl" @group="anti-histamine">
  ]
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # medicines_controller.rb
  get '/medicines/:id' do
    @medicine = all_the_medicines.select do |medicine|
      medicine.id == params[:id]
    end.first
    erb :'/medicines/show.html'
  end


end
