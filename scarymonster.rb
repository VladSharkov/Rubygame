class ScaryMonster

  attr_accessor :hit_points, :attack_power, :type

  ADJECTIVE = [:scary, :horrible, :fierce]

  def initialize
    @adjective = ADJECTIVE.sample
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def to_s
    "#{@adjective.to_s} #{type.to_s}!"
  end

  def dead
    @hit_points <= 0
  end

  def interact(player)

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


