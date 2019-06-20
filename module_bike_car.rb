module Movable
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  def initialize
    @speed = 0
    @direction = 'north'
  end

  include Movable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  def initialize
    @speed = 0
    @direction = 'north'
  end

  include Movable

  def ring_bell
    puts "Ring ring!"
  end
end


bike = Bike.new
car = Car.new

bike.ring_bell
# bike.honk_horn

car.honk_horn
# car.ring_bell
