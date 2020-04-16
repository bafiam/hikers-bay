class RelationshipsController < ApplicationController
  def create
    other_user = User.find(params[:followed_id])
    current_user.follow_a_user(other_user.id)
    flash[:success] = "Following #{other_user.username}"
    redirect_to timeline_path
  end

  def destroy
    other_user = User.find(params[:followed_id])
    current_user.unfollow_a_user(other_user.id)
    flash[:success] = "Unfollowed #{other_user.username}"
    redirect_to timeline_path
  end
end
