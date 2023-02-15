require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/games"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/games/new"
      expect(response).to have_http_status(:success)
    end
  end

  context "when username is required" do
    let(:username) { "fortuna" }

    describe "POST /create" do
      it "returns http success" do
        post "/u/#{username}/games"
        expect(response).to have_http_status(:found)
      end
    end
  
    describe "GET /show" do
      let(:game_id) { 1 }

      it "returns http success" do
        get "/u/#{username}/games/#{game_id}"
        expect(response).to have_http_status(:success)
      end
    end
  end
end
