class UsersController < ApplicationController
  def create
    @username = params[:username]
    redirect_to "/u/#{@username}"
  end

  def show
    @username = params[:username]
    redirect_to "/u/#{@username}/games/1"
  end
end
