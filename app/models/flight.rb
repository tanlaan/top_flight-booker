class Flight < ApplicationRecord
  belongs_to :departing_airport, class_name: 'Airport'
  belongs_to :arriving_airport, class_name: 'Airport'
  validates :departing_airport_id, :arriving_airport_id, :start, presence: true
  has_many :bookings

  scope :sameday, lambda { |day|
    where('date(?) = date(start)', day)
  }
end
