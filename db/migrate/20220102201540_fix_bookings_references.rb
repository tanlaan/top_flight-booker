class FixBookingsReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :flight, index: true, foreign_key: true
    # add_reference :bookings, :passengers, index: true, foreign_key: true
  end
end
