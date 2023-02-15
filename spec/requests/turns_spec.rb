# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Turns', type: :request do
  let(:username) { 'fortuna' }
  let(:game_id) { 1 }
  let(:your_turn) { 5 }

  describe 'POST /create' do
    it 'returns http success' do
      post "/u/#{username}/games/#{game_id}/turns", params: { your_turn: }
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /show' do
    let(:turn_id) { 1 }

    it 'returns http success' do
      get "/u/#{username}/games/#{game_id}/turns/#{turn_id}", params: { your_turn: }
      expect(response).to have_http_status(:success)
    end
  end
end
