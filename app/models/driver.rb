class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  #to find the rides related to this driver
  #then we want to find the passengers from those rides
  #then we want those passengers names

  def rides
    Ride.all.select { | ride | ride.driver == self }
  end

  def passengers
    rides.map { | ride | ride.passenger }
  end


  def passenger_names
    passengers.map { | passenger | passenger.name }.uniq
  end

  def distance
    rides.reduce(0) { | sum, ride | sum + ride.distance }
  end

  def self.mileage_cap(cap_distance)
    self.all.select { | driver | driver.distance > cap_distance }
  end
end
