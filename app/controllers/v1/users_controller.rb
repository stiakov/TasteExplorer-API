class V1::UsersController < ApplicationController
  def show
    user = User.find_by(user_params)
    user ? (render json: user) : not_found
  end

  private

  def user_params
    params.permit(:id, :user)
  end
end
