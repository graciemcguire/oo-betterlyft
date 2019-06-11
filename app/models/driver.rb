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

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def passenger_names
    rides.map { |ride| ride.passenger.name if ride.driver == self }.uniq.compact
  end

  def total_distance
    total_distance = 0
    rides.each { |ride| total_distance += ride.distance }
    total_distance
  end

  # def self.mileage_cap(distance)
  #   @@all.select { |driver| driver.total_distance > distance }
  # end

  def self.mileage_cap(distance)
    self.all.select { |driver| driver.rides.select { |ride| ride.distance > distance } }
  end



end
