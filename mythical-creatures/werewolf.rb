require 'pry'

class Werewolf
  attr_reader :name, :location, :has_eaten

  def initialize(name, location = nil)
    @name = name
    @location = location
    @state = :human
    @has_eaten = false
  end

  def human?
    @state == :human
  end

  def wolf?
    @state == :wolf
  end

  def hungry?
    return false if human? || @has_eaten
    true
  end

  def change!
    if human?
      @state = :wolf
    elsif wolf?
      @state = :human
    end
  end

  def consume(victim)
    return 'Humans don\'t eat humans...' if human?
    @has_eaten = true
    victim.status = :dead
  end
end
