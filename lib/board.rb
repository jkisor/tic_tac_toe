class Board
  
  attr_accessor :data
  
  def initialize(data)
    @data = data
  end

  def spaces
    @data.chars
  end

  def rows
    spaces.each_slice(3).to_a
  end

  def has_empty_spaces?
    spaces.count("-") > 0
  end

end