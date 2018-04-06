class Vital

  def vitalishot

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

  if @player.x_coord == 1 and @player.y_coord == 1
      @north = false
      @south = true
      @east  = false
      @west  = true
    end

  if @player.x_coord == 1 and @player.y_coord == 0
      @north = true
      @south = false
      @east  = false
      @west  = false
    end

  if @player.x_coord == 1 and @player.y_coord == 2
      @north = true
      @south = false
      @east  = false
      @west  = true
    end

  if @player.x_coord == 1 and @player.y_coord == 3
      @north = false
      @south = true
      @east  = false
      @west  = false
  end

  end
end