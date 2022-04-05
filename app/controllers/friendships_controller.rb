class FriendshipsController < ApplicationController
  def destroy
    friend = User.find(params[:id])
    friendship = Friendship.where(user_id: current_user.id, friend_id: friend.id).first
    friendship.destroy
    flash[:notice] = "#{friend.first_name} #{friend.last_name} was successfully removed from your friends"
    redirect_to friendships_path
  end
end