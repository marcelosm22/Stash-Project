class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :edit, :update, :destroy]
  def show
    @posts = Post.where(forum_id: params[:id])
    @post = Post.new
    @ratings = Rating.where(forum_id: params[:id])
    @rating = Rating.new
    @comment = Comment.new
  end

  def index
    if params[:query].present?
      # sql_query = "title ILIKE :query OR description ILIKE :query OR category ILIKE :query"
      sql_query = <<~SQL
        forums.title @@ :query
        OR forums.creator @@ :query
        OR forums.category @@ :query
      SQL
      @forums = Forum.where(sql_query, query: "%#{params[:query]}")
    else
      @forums = Forum.all
    end
  end

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
    params.require(:forum).permit(:title, :creator, :year, :category, :photo)
  end
end
