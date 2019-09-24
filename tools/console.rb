require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new('ethan')
passenger2 = Passenger.new('solomon')
passenger3 = Passenger.new('gaida')
passenger4 = Passenger.new('jacky')
passenger5 = Passenger.new('alex')
passenger6 = Passenger.new('reina')
passenger7 = Passenger.new('keenan')


driver1 = Driver.new('michelle')
driver2 = Driver.new('eric')
driver3 = Driver.new('nicky')

#
ride1 = Ride.new(driver1, passenger2, 66.6)
ride2 = Ride.new(driver2, passenger3, 4.20)
ride3 = Ride.new(driver1, passenger1, 3.11)
ride4 = Ride.new(driver3, passenger4, 6.9)
ride5 = Ride.new(driver1, passenger2, 77.7)
ride6 = Ride.new(driver3, passenger1, 8.9)
ride7 = Ride.new(driver1, passenger1, 5.4)
ride8 = Ride.new(driver2, passenger4, 6.9)

binding.pry
