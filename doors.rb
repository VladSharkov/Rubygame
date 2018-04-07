class Doors
  def roomdoors
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