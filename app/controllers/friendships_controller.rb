class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    # @friendship = Friendship.create(user: current_user, friend: friend)
    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "#{friend.first_name} #{friend.last_name} was successfully added to your friends"
    else
      flash[:alert] = "There was something wrong with the tracking request"
    end
    redirect_to friendships_path
  end
  
  def destroy
    friend = User.find(params[:id])
    friendship = Friendship.where(user_id: current_user.id, friend_id: friend.id).first
    friendship.destroy
    flash[:notice] = "#{friend.first_name} #{friend.last_name} was successfully removed from your friends"
    redirect_to friendships_path
  end
end