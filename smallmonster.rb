require_relative 'scarymonster.rb'

class SmallMonster < ScaryMonster
  include ItemDrop
  attr_accessor :type
  TYPES = [:goblin, :ogre, :ninja]

  def initialize
    super
    @type = TYPES.sample
  end

  def interact(player)
    case @type
      when :goblin
        @hit_points = 10
        @attack_power = 1
        @scream = %Q("Gwwwarrr!")
        @victorypoints = 3

      when :ogre
        @hit_points = 20
        @attack_power = 5
        @scream = %Q("Blarrgarrg!")
        @victorypoints = 10

      when :ninja
        @hit_points = 15
        @attack_power = 2
        @scream = %Q("Oosh!")
        @victorypoints = 5

    end
    super
    if dead
      drop_item(player)
    end
  end
end