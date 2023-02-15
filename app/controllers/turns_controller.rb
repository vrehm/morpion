# frozen_string_literal: true

class TurnsController < ApplicationController
  def create
    @username = params[:username]
    @game_id = params[:game_id]
    @your_turn = params[:your_turn]
    redirect_to "/u/#{@username}/games/1/turns/1?your_turn=#{@your_turn}"
  end

  def show
    @username = params[:username]
  end
end
