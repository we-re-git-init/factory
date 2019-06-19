class Sheep
  @@count = 0
  def initialize
    @@count += 1
    @id = @@count
  end

  def id
    awake_percentage
    @id
  end

  def self.how_many
    p "there are #{@@count} sheep"
  end

  private
  def awake_percentage
    12
  end
end

p Sheep.new.id
p Sheep.new.id
p Sheep.new.id
p Sheep.new.id
p Sheep.new.id

sheep1 = Sheep.new

# sheep1.awake_percentage

# Sheep.how_many



# p She
