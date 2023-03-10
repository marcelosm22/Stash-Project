class RatingsController < ApplicationController
  before_action :set_ratings, only: [:new, :create, :edit, :update, :show]

  def index
    @ratings = Rating.all
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.forum = @forum
    if @rating.save
      redirect_to forum_ratings_path
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
    redirect_to ratings_path
  end

  private

  def set_ratings
    @forum = Forum.find(params[:forum_id])
  end

  def rating_params
    params.require(:rating).permit(:score, :review_content)
  end
end
