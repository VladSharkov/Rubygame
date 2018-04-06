class Monster
  TYPES = [:goblin, :ogre, :ninja, :colossus]
  attr_accessor :hit_points, :attack_power, :type

  def initialize
    @type = TYPES.sample
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def to_s
    "a #{type.to_s}!"
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

    when :colossus
    @hit_points = 50
    @attack_power = 10
    @scream = %Q("I am defeated")
    @victorypoints = 50
    end

    while player.alive?
      puts "You hit the monster for #{player.attack_power} points."
      hurt(player.attack_power)
      break unless alive?
      if @attack_power - player.armor > 0
        player.hurt(@attack_power - player.armor)
        puts "The #{type.to_s} hits you for #{@attack_power - player.armor} points!"
      else
        player.hurt(0)
        puts "Your armor deflected the #{type.to_s}'s attack!"
      end

    end
    if player.alive?
      player.victory(@victorypoints)
      puts ""
      puts "#{@scream}"
      puts ""
      puts "The #{type.to_s} is dead!"
      puts "*You gained #{@victorypoints} victory points! You now have #{player.victory_points} victory points!*"
      puts "You have #{player.hit_points} HP remaining."
    else
      puts ""
      puts "The #{type.to_s} fucked you up. :("
      puts ""
    end
  end
end
