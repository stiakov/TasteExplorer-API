class V1::CommercesController < ApplicationController
  def index
    render json: Commerce.all
  end

  def create
    commerce = Commerce.create(commerce_params)
    if commerce.save
      render json: commerce
    else
      JsonapiErrorsHandler::Errors::Invalid
    end
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
    commerce = Commerce.find_by_id(params[:id])
    if commerce.update(commerce_params)
      render json: commerce
    else
      raise JsonapiErrorsHandler::Errors::Invalid
    end
  end

  def destroy
    commerce = Commerce.find_by_id(params[:id])
    if commerce.delete
      render json: commerce
    else
      raise JsonapiErrorsHandler::Errors::Invalid
    end
  end

  private

  def commerce_params
    params.permit(:id, :name, :country_id, :state, :city, :mobile, :landline, :email, :website, :instagram, :commerce_type_id, :user_id, :address)
  end

end
