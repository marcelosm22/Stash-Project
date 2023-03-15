class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @forums = Forum.all
    @ratings = Rating.where(forum_id: params[:id])
  end
end
