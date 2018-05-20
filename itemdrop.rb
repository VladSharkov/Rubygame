module ItemDrop
  DROPPED_ITEMS = [:herb, :armor_piece, :turd]

  def drop_item(player)
    @dropped_item = DROPPED_ITEMS.sample

    case @dropped_item
      when :herb
        @name = "herb"

      when :armor_piece
        @name = "piece of armor"

      when :turd
        @name = "turd"
    end

    puts "The #{type.to_s} dropped a #{@name.to_s}."

    case @dropped_item
      when :herb
        puts "*You ate the #{@name} and gained 20 HP!*"
        player.heal(20)
        puts "You now have #{player.hit_points} HP."
      when :armor_piece
        puts "*You add a #{@name} to your outfit.*"
        player.armorup(1)
      when :turd
        puts "The smell is awful. Let's get out of here."
    end
  end
end