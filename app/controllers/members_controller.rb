class MembersController < ApplicationController
  before_action :set_member, only: [:index, :new, :create, :destroy]

  def index
    @members = Member.all
    raise
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new
    if @member.save
      redirect_to forum_path(@forum)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to forum_path(@forum)
  end

  private
  def set_member
    @forum = Forum.find(params[:forum_id])
    @user = User.find(params[:user_id])
  end

end
