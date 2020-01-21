class V1::FavoritesController < ApplicationController
  def index
    render json: Favorite.all
  end

  def show
    fav = Favorite.find(favorite_params)
    fav ? (render json: fav) : (raise not_found)
  end

  def create
    new_fav = Favorite.create(favorite_params)
    new_fav.save ? (render json: new_fav) : (raise no_valid)
  end

  def update
    my_fav = Favorite.find(favorite_params)
    my_fav.update(favorite_params) ? (render json: my_fav) : (raise no_valid)
  end

  def destroy
    disposed_fav = Favorite.find(favorite_params)
    disposed_fav.update(favorite_params) ? (render json: disposed_fav) : (raise no_valid)
  end

  private

  def favorite_params
    params.permit(:user_id, :commerce_id)
  end
end
