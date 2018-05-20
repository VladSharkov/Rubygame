class Room
  attr_accessor :size, :content, :doors

  def initialize(x, y, world_height, world_width)
    @content    = get_content
    @size       = get_size
    @adjective  = get_adjective
    @doors = {}
    @doors[:n] = false unless y == world_height - 1
    @doors[:s] = false unless y == 0
    @doors[:e] = false unless x == world_width - 1
    @doors[:w] = false unless x == 0
  end

  def interact(player)
    if @content
      @content.interact(player)
      @content = nil
    end
  end

  def to_s
    "You are in a #{@size} room. It is #{@adjective}."
  end

  def add_door(direction)
  @doors[direction] = true
  end

  private
  def get_content
    [SmallMonster, Item, LargeMonster].sample.new
  end

  def get_size
    ["small", "medium", "large"].sample
  end

  def get_adjective
    ["pretty", "tiny", "round"].sample
  end
end