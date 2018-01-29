
class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @cursed_count = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    if @cursed_count > 1
      @cursed = true
    else
      @cursed_count += 1
    end
  end

  def rob_ship
    @booty += 100
  end

end
