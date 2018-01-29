
class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @needs_to_eat = 2
  end

  def hungry?
    @hungry
  end

  def eat
    if @needs_to_eat > 0
      @needs_to_eat -= 1
    else
      @hungry = false
    end
  end
end
