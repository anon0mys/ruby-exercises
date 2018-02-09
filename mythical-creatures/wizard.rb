
class Wizard
  attr_reader :name, :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @tired = 3
  end

  def bearded?
    @bearded
  end

  def incantation(string)
    "sudo " + string
  end

  def rested?
    if @tired < 1
      false
    else
      true
    end
  end

  def cast
    @tired -= 1
    "MAGIC MISSLE"
  end
end
