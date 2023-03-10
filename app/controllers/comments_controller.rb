class CommentsController < ApplicationController
  before_action :set_comment, only: [:new, :create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.post = @post
    if @comment.save
      redirect_to forum_path(@forum)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to forum_path(@forum), status: :see_other
  end

  def set_comment
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :comment_content)
  end

end
