class CommentsController < ApplicationController
  before_action :set_comment, only: [:new, :create, :show]

  # def show
  #   @comment = Comment.find(params[:id])
  # end

  # def new
  #   @comment = Comment.new
  # end

  def create
    # @forum = Forum.find(params[:forum_id])
    # @post = Post.find(params[:id])
    # @post.forum = @forum
    # @post.user = current_user

    @forum = Forum.find(@post.forum_id)


    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    # raise

    respond_to do |format|
      if @comment.save
        format.html {redirect_to post_path(@post)}
        format.json
      else
        format.html {render "posts/show", status: :unprocessable_entity}
        format.json
      end
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
    params.require(:comment).permit(:comment_content)
  end
end
