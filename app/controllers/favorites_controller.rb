class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  

  def create
    favorite = Micropost.find(params[:micropost_id])
    current_user.favorite(favorite)
    flash[:success] = "お気に入りに登録しました。"
    redirect_to root_url
  end

  def destroy
     favorite = Micropost.find(params[:micropost_id])
     current_user.unfavorite(favorite)
     flash[:success] = "お気に入りを解除しました。"
     redirect_to root_url
  end
end
