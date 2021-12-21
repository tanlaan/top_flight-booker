class FlightsController < ApplicationController
  def index
    @flight = if request.query_parameters.empty?
                Flight.new
              else
                Flight.new(flight_params)
              end
  end

  private

  def flight_params
    params.require(:flight).permit(:departing_airport_id, :arriving_airport_id, :start)
  end

end
