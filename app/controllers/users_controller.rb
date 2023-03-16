class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @lists = List.where(user_id: params[:id])
    @list = List.new
  end
end
