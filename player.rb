class Player
  attr_accessor :hit_points, :attack_power, :armor, :victory_points
  attr_accessor :x_coord, :y_coord

  MAX_HIT_POINTS = 100

  def initialize
    @hit_points         = 50
    @attack_power       = 1
    @armor              = 0
    @victory_points     = 0
    @x_coord, @y_coord  = 0, 0
  end

  def alive?
    @hit_points > 0
  end

  def dead
    @hit_points <= 0
  end

  def win
    @victory_points >= 100
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def armorup(amount)
    @armor += amount
  end

  def heal(amount)
    @hit_points += amount
    @hit_points = [@hit_points, MAX_HIT_POINTS].min
  end

  def victory(amount)
    @victory_points += amount
  end

  def print_status
    puts "*" * 80
    puts "HP: #{@hit_points}/#{MAX_HIT_POINTS}"
    puts "Attack: #{@attack_power}"
    puts "Armor: #{@armor}"
    puts "VP: #{@victory_points}"
    puts "*" * 80
  end
end