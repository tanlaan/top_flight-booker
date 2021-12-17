class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flight', inverse_of: :departing_airport, foreign_key: 'departing_airport_id', dependent: :delete_all
  has_many :arriving_flights, class_name: 'Flight', inverse_of: :arriving_airport, foreign_key: 'arriving_airport_id', dependent: :delete_all
end
