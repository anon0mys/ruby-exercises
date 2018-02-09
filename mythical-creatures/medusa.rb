
class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.length > 2
      @statues.push(victim)
      victim.stoned = true
      @statues.shift.stoned = false
    else
      @statues.push(victim)
      victim.stoned = true
    end
  end

end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
