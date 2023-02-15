require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "POST /create" do
    it "returns http success" do
      post "/users", params: { username: "fortuna" }
      expect(response).to have_http_status(:found)
    end
  end

  describe "GET /show, as u/:username" do
    let(:username) { "fortuna" }

    it "returns http success" do
      get "/u/#{username}"
      expect(response).to have_http_status(:found)
    end
  end
end
