require 'pry'

class World
  WORLD_WIDTH   = 10
  WORLD_HEIGHT  = 10

  def initialize
    #@rooms = Array.new(WORLD_WIDTH, Array.new(WORLD_HEIGHT))
    @rooms = Array.new(WORLD_WIDTH) {Array.new(WORLD_HEIGHT)}

    @rooms = Hash.new
    10.times do |x|
      10.times do |y|
        @rooms[[x,y]] = Room.new
      end
    end

  end

  def move_entity_north(entity)
    entity.y_coord += 1 if entity.y_coord < WORLD_HEIGHT-1
  end

  def move_entity_south(entity)
    entity.y_coord -= 1 if entity.y_coord > 0
  end

  def move_entity_east(entity)
    entity.x_coord += 1 if entity.x_coord < WORLD_WIDTH-1
  end

  def move_entity_west(entity)
    entity.x_coord -= 1 if entity.x_coord > 0
  end

  def get_room_of(entity)
    @rooms[entity.x_coord][entity.y_coord] ||= Room.new
  end
end

class Room
  attr_accessor :size, :content

  def initialize
    @content    = get_content
    @size       = get_size
    @adjective  = get_adjective
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

  private
  def get_content
    [Monster, Item].sample.new
  end

  def get_size
    ["small", "medium", "large"].sample
  end

  def get_adjective
    ["pretty", "tiny", "round"].sample
  end
end