class PostsController < ApplicationController
  before_action :set_post, only: [:show, :new, :create]

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.forum = @forum
    @post.user = current_user
    if @post.save
      redirect_to forum_post_path(@forum, @post)
      # redirect_to forum_path(@forum)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to_ forum_post(@post.forum), status: :see_other
  end

  private

  def set_post
    @forum = Forum.find(params[:forum_id])
  end

  def post_params
    params.require(:post).permit(:id, :date,  :content, :user_id, :forum_id)
  end
end
