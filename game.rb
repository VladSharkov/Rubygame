require_relative 'player'
require_relative 'item'
require_relative 'all_monsters'
require_relative 'world'
require_relative 'door_builder'


class Game
  ACTIONS = [
      :north, :east, :south, :west, :look, :fight, :take, :status
  ]

  def initialize
    @world = World.new
    @player = Player.new

    run_game
  end

  private
  def run_game
    while @player.alive? and @player.victory_points < 100
      @current_room = @world.get_room_of(@player)

      print_status

      action = take_player_input
      next unless ACTIONS.include? action

      take_action(action)

      if @player.win
        puts ""
        puts "*" * 80
        puts ""
        puts "You kicked the game's ass. Well done!"
        puts "You are the champion!!!"
        puts ""
        puts "*" * 80
        puts ""
        #@player.hit_points = 0
      end
    end


    if @player.dead
      puts "GAME OVER"
    end


  end

  def take_player_input
    print "What's the plan, Van Damme?"
    gets.chomp.to_sym

  end

  def print_status
    puts "You are at map coordinates [#{@player.x_coord}, #{@player.y_coord}]"

    puts @current_room

    if @current_room.content
      puts ""
      puts "There's a #{@current_room.content}"
    end

    puts ""
    if @current_room.doors[:n]
      puts "You see a door to the north."
    end
    if @current_room.doors[:s]
      puts "You see a door to the south."
    end
    if @current_room.doors[:e]
      puts "You see a door to the east."
    end
    if @current_room.doors[:w]
      puts "You see a door to the west."
    end
    puts ""
  end

=begin
    def take_action(action)
        case action
        when :look
          print_status
        when :north
          @world.move_entity_north(@player)
        when :east
          @world.move_entity_east(@player)
        when :south
          @world.move_entity_south(@player)
        when :west
          @world.move_entity_west(@player)
        when :fight, :take
            @current_room.interact(@player)
        when :status
            @player.print_status
        end

=end
  def take_action(action)
    case action
      when :look
        @print_status
      when :north
        if @current_room.doors[:n]
          @world.move_entity_north(@player)
        else
          @player.hurt(1)
          puts "You run into a wall. Ouch! You have #{@player.hit_points} HP remaining."
        end
      when :east
        if @current_room.doors[:e]
          @world.move_entity_east(@player)
        else
          @player.hurt(1)
          puts "You run into a wall. Ouch! You have #{@player.hit_points} HP remaining."
        end
      when :south
        if @current_room.doors[:s]
          @world.move_entity_south(@player)
        else
          @player.hurt(1)
          puts "You run into a wall. Ouch! You have #{@player.hit_points} HP remaining."
        end
      when :west
        if @current_room.doors[:w]
          @world.move_entity_west(@player)
        else
          @player.hurt(1)
          puts "You run into a wall. Ouch! You have #{@player.hit_points} HP remaining."
        end
      when :fight, :take
        @current_room.interact(@player)
      when :status
        @player.print_status
    end
  end

end


Game.new

