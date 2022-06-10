class BookingController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passengers = Array.new(params[:passengers].to_i) { Passenger.new }
  end

  def create
    @booking = Booking.create(booking_params)
    
    # Send confirmation emails
    for passenger in @booking.passengers do
      PassengerMailer.confirmation_email(passenger).deliver_later
    end
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
