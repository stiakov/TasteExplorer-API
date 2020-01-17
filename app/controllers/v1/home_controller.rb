class V1::HomeController < ApplicationController
  def index
    render json: 'home'
  end
  
  def private
    render json: 'this is my private room'
  end
end
