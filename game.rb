load 'player.rb'
load 'item.rb'
load 'monsters.rb'
load 'world.rb'
load 'specroom.rb'

#require 'pry'

class Game < Vital
  ACTIONS = [
      :north, :east, :south, :west, :look, :fight, :take, :status
  ]

  def initialize
    @world = World.new
    @player = Player.new

    start_game
  end

  private
  def start_game
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
      vitalishot
      print "What's the plan, Van Damme?"
      gets.chomp.to_sym

    end

    def print_status
      puts "You are at map coordinates [#{@player.x_coord}, #{@player.y_coord}]"

      puts @current_room
      if @current_room.content
        puts "You see #{@current_room.content}"
      end
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
              print_status
            when :north
              if @north == true
                @world.move_entity_north(@player)
              else
                @player.hurt(1)
                puts "You run into a wall. Ouch! You have #{@player.hit_points} HP remaining."
              end
            when :east
              if @east == true
                @world.move_entity_east(@player)
              else
                @player.hurt(1)
                puts "You run into a wall. Ouch! You have #{@player.hit_points} HP remaining."
              end
            when :south
              if @south == true
                @world.move_entity_south(@player)
              else
                @player.hurt(1)
                puts "You run into a wall. Ouch! You have #{@player.hit_points} HP remaining."
              end
            when :west
              if @west == true
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

