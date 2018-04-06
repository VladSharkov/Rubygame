class Item
  TYPES = [:potion, :sword, :poison, :armor]
  attr_accessor :type

  def initialize
    @type = TYPES.sample
    case @type
    when :potion
    @name = "potion"

    when :sword
    @name = "blade sharpener"

    when :poison
    @name = "potion"

    when :armor
    @name = "armor piece"
    end
  end

  def interact(player)
    case @type
    when :potion
      puts "You drank a 30 HP #{@name}."
      player.heal(30)
      puts "You now have #{player.hit_points} HP."
    when :sword
      puts "You picked up a #{@name}."
      player.attack_power += 1
    when :poison
      player.hurt(15)
      if player.alive?
        puts "You drank a deadly poison. Ouch!"
        puts "You have #{player.hit_points} HP remaining."
      else
        puts ""
        puts "You drank poison and died. Oooooooooooooooooops. :("
        puts ""
      end
    when :armor
      player.armorup(1)
      puts "You add a piece of armor to your outfit."
    end
  end

  def to_s
    "a #{@name}."
  end
end