class FollowingsController < ApplicationController
  def index
    @followings = Following.all
  end

  def new
    @user = User.find(params[:user_id])
    @following = Following.new
  end

  def create
    @following = Following.new
    @user = User.find(params[:user_id])
    @following.follower_id = current_user.id
    @following.followed_id = @user.id
    if @following.save!
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def following_params
    params.require(:following).permit(:follower_id, :followed_id)
  end
end
