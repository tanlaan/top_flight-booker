class PassengerMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def confirmation_email(passenger)
        @passenger = passenger
        @url = 'http://www.example.com'
        mail(to: @passenger.email, subject: "Please confirm your tickets.")
    end
end
