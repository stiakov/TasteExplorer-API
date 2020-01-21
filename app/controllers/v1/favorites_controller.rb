class V1::FavoritesController < ApplicationController
  def index
    render json: Favorite.all
  end

  def show
    fav = Favorite.find_by(favorite_params)
    fav ? (render json: fav) : not_found
  end

  def create
    new_fav = Favorite.create(favorite_params)
    new_fav.save ? (render json: new_fav) : no_valid
  end

  def destroy
    disposed_fav = Favorite.find_by(favorite_params)
    disposed_fav&.destroy
    disposed_fav ? (render json: disposed_fav) : no_valid
  end

  private

  def favorite_params
    params.permit(:id, :user_id, :commerce_id)
  end
end
