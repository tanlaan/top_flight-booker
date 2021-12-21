class Flight < ApplicationRecord
  belongs_to :departing_airport, class_name: 'Airport'
  belongs_to :arriving_airport, class_name: 'Airport'
  validates :deapring_airport_id, :arriving_airport_id, :start, presence: true

  scope :sameday, lambda { |day|
    where('date(?) = date(start)', day)
  }
end
