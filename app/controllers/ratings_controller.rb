class RatingsController < ApplicationController
  before_action :set_ratings, only: [:new, :create, :edit, :update]

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.forum = @forum
    @rating.user = current_user
    if @rating.save
      redirect_to forum_path(@forum)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update(rating_params)
    redirect_to forum_ratings_path
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    redirect_to forum_path(@rating.forum)
  end

  private

  def set_ratings
    @forum = Forum.find(params[:forum_id])
  end

  def rating_params
    params.require(:rating).permit(:score, :user_id)
  end
end
