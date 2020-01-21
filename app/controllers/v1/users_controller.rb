class V1::UsersController < ApplicationController
  def show
    user = User.find_by(user_params)
    if user
      render json: user
    else
      raise JsonapiErrorsHandler::Errors::NotFound
    end
  end

  private

  def user_params
    params.permit(:id, :user)
  end
end
