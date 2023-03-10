class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :edit, :update, :destroy]
  def show
  end

  def index
    @forums = Forum.all
  end

  # def index
  #   if params[:query].present?
  #     sql_query = "title ILIKE :query OR description ILIKE :query OR date ILIKE :query"
  #     @forums = Forum.where(sql_query, query: "%#{params[:query]}")
  #   else
  #     @forums = Forum.all
  #   end
  # end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)

    if @forum.save
      redirect_to forum_path(@forum)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @forum.update(forum_params)
      redirect_to forum_path(@forum)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # destroy first the bookmarks with the forum id
    # destroy this bookmarks first "Bookmark.where(forum_id: params[:id])"
    @forum.destroy
    redirect_to forums_path, status: :see_other
  end

  private

  def set_forum
    @forum = Forum.find(params[:id])
  end

  def forum_params
    params.require(:forum).permit(:title, :description, :date, :category)
  end
end
