class BookingController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passengers = Array.new(params[:passengers].to_i) { Passenger.new }
  end

  def create
    @booking = Booking.create(booking_params)
    redirect_to @booking
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
  end
end
