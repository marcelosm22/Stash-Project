class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @lists = List.where(user_id: params[:id])
    @list = List.new
    @forums = Forum.all
    @follow = Follow.new
    @followers = Follow.where(following_id: params[:id])
    @following = Follow.where(follower_id: params[:id])
    authorize @user
    @bookmarks = Bookmark.all
  end
end
