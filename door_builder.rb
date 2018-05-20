class DoorBuilder

  attr_accessor :rooms, :world_width, :world_height

  def initialize(rooms, world_width, world_height)
    @rooms = rooms
    @world_width = world_width
    @world_height = world_height

  end

  def build_doors
    @world_width.times do |x|
      @world_height.times do |y|
        room = @rooms[[x, y]]
        #plan to make this a hash of { n:t, s:t... }
        number_of_missing_doors = room.doors.values.select { |present| !present }.length
        number_of_doors_to_add = number_of_missing_doors > 0 ? Random.rand(1..number_of_missing_doors) : 0
        number_of_doors_to_add.times do
          #need to know which directions don't have doors and pick one of them
          direction_to_add = room.doors.select { |direction, present| !present }.keys.sample
          add_door_to_room(x, y, room, direction_to_add)

        end

      end
    end
  end

  private
  def add_door_to_room(x, y, room, direction)
    room.add_door(direction)
    case direction
      when :n
        corresponding_direction = :s
        adjacent_room = @rooms[[x, y+1]]
      when :s
        corresponding_direction = :n
        adjacent_room = @rooms[[x, y-1]]
      when :e
        corresponding_direction = :w
        adjacent_room = @rooms[[x+1, y]]
      else
        corresponding_direction = :e
        adjacent_room = @rooms[[x-1, y]]
    end
    adjacent_room.add_door(corresponding_direction)
  end

end
=begin
  if @player.x_coord == 0 and @player.y_coord == 0
      @north = true
      @south = false
      @east  = false
      @west  = false
  end

  if @player.x_coord == 0 and @player.y_coord == 1
      @north = true
      @south = true
      @east  = true
      @west  = false
    end

  if @player.x_coord == 0 and @player.y_coord == 2
      @north = true
      @south = true
      @east  = true
      @west  = false
    end

  if @player.x_coord == 0 and @player.y_coord == 3
      @north = false
      @south = true
      @east  = false
      @west  = false
  end

  if @player.x_coord == 0 and @player.y_coord == 4
    @north = true
    @south = false
    @east  = true
    @west  = false
  end

  if @player.x_coord == 0 and @player.y_coord == 5
    @north = true
    @south = true
    @east  = true
    @west  = false
  end

  if @player.x_coord == 0 and @player.y_coord == 6
    @north = false
    @south = true
    @east  = true
    @west  = false
  end

  if @player.x_coord == 0 and @player.y_coord == 7
    @north = true
    @south = false
    @east  = true
    @west  = false
  end

  if @player.x_coord == 0 and @player.y_coord == 8
    @north = false
    @south = true
    @east  = true
    @west  = false
  end

  if @player.x_coord == 0 and @player.y_coord == 9
    @north = false
    @south = false
    @east  = true
    @west  = false
  end

  #start of 1 x

  if @player.x_coord == 1 and @player.y_coord == 0
    @north = true
    @south = false
    @east  = true
    @west  = false
  end

  if @player.x_coord == 1 and @player.y_coord == 1
      @north = false
      @south = true
      @east  = false
      @west  = true
  end

  if @player.x_coord == 1 and @player.y_coord == 2
      @north = true
      @south = false
      @east  = true
      @west  = true
    end

  if @player.x_coord == 1 and @player.y_coord == 3
      @north = false
      @south = true
      @east  = false
      @west  = false
  end

  if @player.x_coord == 1 and @player.y_coord == 4
    @north = false
    @south = false
    @east  = true
    @west  = true
  end

  if @player.x_coord == 1 and @player.y_coord == 5
    @north = false
    @south = false
    @east  = true
    @west  = true
  end

  if @player.x_coord == 1 and @player.y_coord == 6
    @north = true
    @south = false
    @east  = true
    @west  = true
  end

  if @player.x_coord == 1 and @player.y_coord == 7
    @north = false
    @south = true
    @east  = true
    @west  = true
  end

  if @player.x_coord == 1 and @player.y_coord == 8
    @north = true
    @south = false
    @east  = true
    @west  = true
  end

  if @player.x_coord == 1 and @player.y_coord == 9
    @north = false
    @south = true
    @east  = true
    @west  = true
  end

  #start of 2 x

  if @player.x_coord == 2 and @player.y_coord == 0
    @north = true
    @south = false
    @east  = false
    @west  = true
  end

  if @player.x_coord == 2 and @player.y_coord == 1
    @north = true
    @south = true
    @east  = false
    @west  = false
  end

  if @player.x_coord == 2 and @player.y_coord == 2
    @north = true
    @south = true
    @east  = false
    @west  = true
  end

  if @player.x_coord == 2 and @player.y_coord == 3
    @north = true
    @south = true
    @east  = false
    @west  = false
  end

  if @player.x_coord == 2 and @player.y_coord == 4
    @north = true
    @south = true
    @east  = false
    @west  = true
  end

  if @player.x_coord == 2 and @player.y_coord == 5
    @north = true
    @south = true
    @east  = false
    @west  = true
  end

  if @player.x_coord == 2 and @player.y_coord == 6
    @north = false
    @south = true
    @east  = false
    @west  = true
  end

  if @player.x_coord == 2 and @player.y_coord == 7
    @north = true
    @south = false
    @east  = false
    @west  = true
  end

  if @player.x_coord == 2 and @player.y_coord == 8
    @north = true
    @south = true
    @east  = false
    @west  = true
  end

  if @player.x_coord == 2 and @player.y_coord == 9
    @north = false
    @south = true
    @east  = false
    @west  = true
  end

  end
end
=end