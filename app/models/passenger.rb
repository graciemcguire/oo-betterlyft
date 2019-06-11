class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end
#
#   def drivers
#     ride = Ride.all
#     myArray = []
#     count = 0
#     while count < ride.size
#       if (ride[count].passenger == self)
#         myArray.push(ride[count].driver)
#       end
#       count = count + 1
#     end
#     myArray
#   end
# end

  # def drivers
  #   Ride.all.select do |ride|
  #     if ride.passenger == self
  #       ride.driver
  #     end
  #   end
  # end

  def drivers
    rides.map { |ride| ride.driver }
  end

  # def total_distance
  #   sum = 0
  #   rides.map { |ride| sum += ride.distance }
  #   sum
  # end

  def total_distance
    rides.map { |ride| ride.distance }.sum
  end

  # def self.premium_members
  #   myArray = []
  #   count = 0
  #   while count < @@all.size
  #     current_passenger = @@all[count]
  #     if current_passenger.total_distance > 100
  #       myArray.push(current_passenger)
  #     end
  #     count = count + 1
  #   end
  #   myArray
  # end

  def self.premium_members
    @@all.select { |passenger| passenger.total_distance > 100 }
  end



end
