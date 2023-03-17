class FollowsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @follows = Follow.all
  end

  def new
    @user = User.find(params[:user_id])
    @follow = Follow.new
  end

  def create
    @user = User.find(params[:user_id])
    @follow = Follow.new
    if current_user != @user
    @follow.follower_id = current_user.id
    @follow.following_id = @user.id
    @follow.save!
    else
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @follow = Follow.find(params[:id].to_i)
    @follow.destroy
    redirect_to user_path(@user)
  end
end
