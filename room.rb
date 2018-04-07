class Room
  attr_accessor :size, :content, :doors

  def initialize
    @content    = get_content
    @size       = get_size
    @adjective  = get_adjective
    @doors = {n:false, s:false, e:false, w:false}
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