class DoorBuilder
  def build_doors(rooms, world_width, world_height)
    world_width.times do |x|
      world_height.times do |y|
        room = rooms[[x, y]]
        # plan to make this a hash itself of { n:t, s:t, e:t, w:t }
        number_of_missing_doors = room.doors.values.select {|present| !present}.length
        number_of_doors_to_add = Random.rand(1..number_of_missing_doors)
        number_of_doors_to_add.times do
          # need to know which directions dont have doors and pick one of them
          missing_doors = room.doors.select {|direction, present| !present}
          missing_door_directions = missing_doors.keys
          door_to_add = missing_door_directions.sample
          room.add_door(door_to_add)
        end
      end

    end

    # iterate over all the rooms
    # for each room
    # if it has a door already
    #   (means it's already connected to at least one other room)
    #   check what doors it has
    #   check number of doors -> X
    #   if it has < 4 doors, get difference -> Y = (4-X)
    #   create a random number between 1 and Y (inclusive) -> N
    # if no doors
    #   create a random number between 1 and 4 -> N
    # do N times...
    #   take the cardinal directions without doors
    #   select a random direction
    #   if it's not a boundary (wall)
    #     put a door there (this should link it to another room)


    if @player.x_coord == 0 and @player.y_coord == 0
      @north = true
      @south = false
      @east = false
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 1
      @north = true
      @south = true
      @east = true
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 2
      @north = true
      @south = true
      @east = true
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 3
      @north = false
      @south = true
      @east = false
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 4
      @north = true
      @south = false
      @east = true
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 5
      @north = true
      @south = true
      @east = true
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 6
      @north = false
      @south = true
      @east = true
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 7
      @north = true
      @south = false
      @east = true
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 8
      @north = false
      @south = true
      @east = true
      @west = false
    end

    if @player.x_coord == 0 and @player.y_coord == 9
      @north = false
      @south = false
      @east = true
      @west = false
    end

    #start of 1 x

    if @player.x_coord == 1 and @player.y_coord == 0
      @north = true
      @south = false
      @east = true
      @west = false
    end

    if @player.x_coord == 1 and @player.y_coord == 1
      @north = false
      @south = true
      @east = false
      @west = true
    end

    if @player.x_coord == 1 and @player.y_coord == 2
      @north = true
      @south = false
      @east = true
      @west = true
    end

    if @player.x_coord == 1 and @player.y_coord == 3
      @north = false
      @south = true
      @east = false
      @west = false
    end

    if @player.x_coord == 1 and @player.y_coord == 4
      @north = false
      @south = false
      @east = true
      @west = true
    end

    if @player.x_coord == 1 and @player.y_coord == 5
      @north = false
      @south = false
      @east = true
      @west = true
    end

    if @player.x_coord == 1 and @player.y_coord == 6
      @north = true
      @south = false
      @east = true
      @west = true
    end

    if @player.x_coord == 1 and @player.y_coord == 7
      @north = false
      @south = true
      @east = true
      @west = true
    end

    if @player.x_coord == 1 and @player.y_coord == 8
      @north = true
      @south = false
      @east = true
      @west = true
    end

    if @player.x_coord == 1 and @player.y_coord == 9
      @north = false
      @south = true
      @east = true
      @west = true
    end

    #start of 2 x

    if @player.x_coord == 2 and @player.y_coord == 0
      @north = true
      @south = false
      @east = false
      @west = true
    end

    if @player.x_coord == 2 and @player.y_coord == 1
      @north = true
      @south = true
      @east = false
      @west = false
    end

    if @player.x_coord == 2 and @player.y_coord == 2
      @north = true
      @south = true
      @east = false
      @west = true
    end

    if @player.x_coord == 2 and @player.y_coord == 3
      @north = true
      @south = true
      @east = false
      @west = false
    end

    if @player.x_coord == 2 and @player.y_coord == 4
      @north = true
      @south = true
      @east = false
      @west = true
    end

    if @player.x_coord == 2 and @player.y_coord == 5
      @north = true
      @south = true
      @east = false
      @west = true
    end

    if @player.x_coord == 2 and @player.y_coord == 6
      @north = false
      @south = true
      @east = false
      @west = true
    end

    if @player.x_coord == 2 and @player.y_coord == 7
      @north = true
      @south = false
      @east = false
      @west = true
    end

    if @player.x_coord == 2 and @player.y_coord == 8
      @north = true
      @south = true
      @east = false
      @west = true
    end

    if @player.x_coord == 2 and @player.y_coord == 9
      @north = false
      @south = true
      @east = false
      @west = true
    end
  end
end