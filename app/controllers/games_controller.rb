class GamesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @username = params[:username]
    redirect_to "/u/#{@username}/games/1"
  end

  def show
    @username = params[:username]
  end
end
