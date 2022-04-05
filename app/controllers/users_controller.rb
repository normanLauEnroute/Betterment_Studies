class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def friendships
    @user_friends = current_user.friends
  end
end
