require "rails_helper"

RSpec.describe "Auth", :type => :request do
    
    it "create survivors" do

        post "/api/auth/login", :params => { :email => "yasmin", :password => 123}
        expect(response).to  have_http_status(:success)
        response_body_json = JSON.parse(response.body)
        expect(response_body_json["username"]).to eq("yasmin")

    end

end