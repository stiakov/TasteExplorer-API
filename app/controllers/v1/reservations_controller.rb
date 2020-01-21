class V1::ReservationsController < ApplicationController
  def index
    render json: Reservation.all
  end

  def create
    new_reservation = Reservation.create(reservation_params)
    new_reservation.valid? ? (render json: new_reservation) : no_valid
  end

  def show
    my_reservation = Reservation.find_by(reservation_params)
    my_reservation ? (render json: my_reservation) : not_found
  end

  def update
    reservation = Reservation.find_by_id(params[:id])
    reservation&.update!(reservation_params)
    reservation ? (render json: reservation) : no_valid
  end

  def destroy
    reservation = Reservation.find_by_id(params[:id])
    reservation&.destroy
    reservation ? (render json: reservation) : no_valid
  end

  private

  def reservation_params
    params.permit(:id, :user_id, :commerce_id, :seat, :date_time)
  end
end
