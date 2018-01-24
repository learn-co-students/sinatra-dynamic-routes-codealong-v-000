require 'spec_helper'

describe 'app.rb' do
  describe 'GET /goodbye/:name' do
    it 'sends a 200 status code' do
      get '/goodbye/danny'
      expect(last_response.status).to eq(200)
    end

    it "displays 'goodbye' and a name" do
      get '/goodbye/danny'
      expect(last_response.body).to include("Goodbye, danny.")
    end

    it "is not hard-coded" do
      get '/goodbye/fannie'
      expect(last_response.body).to include("Goodbye, fannie.")
    end
  end


end
