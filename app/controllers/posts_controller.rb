class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.forum = @forum
    if @post.save
      redirect_to forum_post(@forum)
    else
      render :new, status: :unprocessable_entity
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to_ forum_post(@post.forum), status: :see_other
  end
end

  private

  def set_post
    @forum = Forum.find(params[:forum_id])
  end

  def post_params
    params.require(:post).permit(:content)
end
