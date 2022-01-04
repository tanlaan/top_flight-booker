class BookingsPassenger < ApplicationRecord
  belongs_to :bookings
  belongs_to :passengers
end
