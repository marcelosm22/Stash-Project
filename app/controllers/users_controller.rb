class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @lists = List.where(user_id: params[:id])
    @list = List.new
    @followings = Following.where(user_id: params[:id])
    @following = Following.new
  end
end
