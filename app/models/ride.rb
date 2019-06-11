class Ride
  attr_reader :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.average_distance
  #   all.map { |ride| ride.distance }.sum / all.length
  # end

  def self.average_distance
    numOfRides = 0
    total = 0
    while numOfRides < @@all.size
      total = total + @@all[numOfRides].distance
      numOfRides = numOfRides + 1
    end
    total / numOfRides
  end

end
