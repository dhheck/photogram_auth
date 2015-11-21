class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def my_likes
    @photos = current_user.liked_photos.reverse
  end

end
