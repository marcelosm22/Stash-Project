class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
    @lists = policy_scope(List)
  end

  def show
    @user = User.find(params[:id])
    authorize @list
    @bookmark = Bookmark.new
    @forums = Forum.all
    @itens = @forums.map do |forum|
      {
        id: forum.id,
        make: forum.category.downcase,
        model: forum.title.capitalize
      }
    end
  end

  def new
    authorize @list
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    authorize @list
    if @list.save!
      redirect_to user_path(current_user.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @list
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :user_id)
  end
end
