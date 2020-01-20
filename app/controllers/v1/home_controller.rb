class V1::HomeController < ApplicationController
  before_action :authenticate_user!, only: [:private]

  def index
    render json: 'testing home'
  end

  def private
    render json: current_user
  end
end
