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
    Ride.all.select { | ride | ride.passenger == self }
  end

  def drivers
    rides.map { | ride | ride.driver }
  end

  def total_distance
    rides.reduce(0) { | sum, ride | sum + ride.distance }.to_f
  end

  def self.premium_members
    #we want to iterate through all of the
    #rides and find out who rode over 100 miles
    # lots_of_rides = Ride.all.select { | ride | ride.distance > 20 }
    # lots_of_rides.map { | ride | ride.passenger.name }.uniq
    self.all.select { | passenger |  passenger.total_distance > 100 }
  end

end
