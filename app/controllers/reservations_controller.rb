class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @users = User.all
    @restaurants = Restaurant.all
  end


  def create
    @reservation = Reservation.create(reservation_params)
    redirect_to user_path(@reservation.user)
  end



  def edit
    @reservation = Reservation.find(params[:id])
    @users = User.all
    @restaurants = Restaurant.all
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to user_path(@reservation.user)
  end



  #private MEthod

  def reservation_params
    params.require(:reservation).permit(:meal, :user_id, :restaurant_id)
  end

end
