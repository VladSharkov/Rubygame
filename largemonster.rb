require_relative 'scarymonster.rb'

class LargeMonster < ScaryMonster
  attr_accessor :type
  TYPES = [:colossus, :dragon]

  def initialize
    super
    @type = TYPES.sample
  end

  def interact(player)
    case @type
      when :colossus
        @hit_points = 50
        @attack_power = 10
        @scream = %Q("I am defeated")
        @victorypoints = 50

      when :dragon
        @hit_points = 100
        @attack_power = 20
        @scream = %Q("GRAARR!!!")
        @victorypoints = 100

    end
    super
  end
end
#  when :colossus
#@hit_points = 50
#@attack_power = 10
#@scream = %Q("I am defeated")
#@victorypoints = 50