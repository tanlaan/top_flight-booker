# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Passenger.destroy_all

Airport.destroy_all
Airport.create!([{ code: 'PDX' }, { code: 'JFK' }, { code: 'LAX' }, { code: 'MCI' }])
PDX = Airport.find_by("code = 'PDX'")
JFK = Airport.find_by("code = 'JFK'")
LAX = Airport.find_by("code = 'LAX'")
MCI = Airport.find_by("code = 'MCI'")

Flight.destroy_all
Flight.create!([
                {
                  start: Time.parse('October 2022'),
                  departing_airport_id: PDX.id,
                  arriving_airport_id: JFK.id
                },
                {
                  start: Time.parse('October 2022'),
                  departing_airport_id: JFK.id,
                  arriving_airport_id: MCI.id
                },
                {
                  start: Time.parse('November 23 2022 12:30:00'),
                  departing_airport_id: PDX.id,
                  arriving_airport_id: LAX.id
                },
                {
                  start: Time.parse('November 23 2022 01:00:00'),
                  departing_airport_id: LAX.id,
                  arriving_airport_id: PDX.id
                }
              ])
