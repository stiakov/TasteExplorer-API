class V1::CommercesController < ApplicationController
  def index
    render json: Commerce.all
  end

  def create
  end

  def show
    commerce = Commerce.find_by(commerce_params)
    if commerce
      render json: commerce
    else
      raise JsonapiErrorsHandler::Errors::NotFound
    end
  end

  def update
  end

  def destroy
  end

  private

  def commerce_params
    params.permit(:id, :name, :country, :state, :city, :mobile, :landline, :email, :website, :instagram, :commerce_type)
  end

end
